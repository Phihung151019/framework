.class Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$1;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiNetworkStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$1;->this$0:Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onLinkConfiguredChanged()V
    .locals 0

    .line 1
    return-void
.end method

.method public onNetworkStateChanged(Landroid/net/NetworkInfo;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$1;->this$0:Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;

    .line 9
    .line 10
    invoke-static {p0}, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;->-$$Nest$fgetifaceHistory(Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;)Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceStateHistory;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    sget-object p1, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceState;->CONNECTED:Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceState;

    .line 15
    .line 16
    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceStateHistory;->addHistory(ILcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceState;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$1;->this$0:Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;

    .line 27
    .line 28
    invoke-static {p0}, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;->-$$Nest$fgetifaceHistory(Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;)Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceStateHistory;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    sget-object p1, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceState;->CONNECTING:Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceState;

    .line 33
    .line 34
    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceStateHistory;->addHistory(ILcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceState;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$1;->this$0:Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;

    .line 39
    .line 40
    invoke-static {p0}, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;->-$$Nest$fgetifaceHistory(Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;)Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceStateHistory;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    sget-object p1, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceState;->DISCONNECTED:Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceState;

    .line 45
    .line 46
    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceStateHistory;->addHistory(ILcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceState;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method
