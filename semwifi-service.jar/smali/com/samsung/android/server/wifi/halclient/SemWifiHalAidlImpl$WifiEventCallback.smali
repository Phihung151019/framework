.class Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl$WifiEventCallback;
.super Lcom/samsung/wifi/x/android/hardware/wifi/IWifiEventCallback$Stub;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiEventCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;


# direct methods
.method private constructor <init>(Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl$WifiEventCallback;->this$0:Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiEventCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl$WifiEventCallback;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;)V

    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "aa2d34a8d196759e8f89109768ebe16039e47518"

    .line 2
    .line 3
    return-object p0
.end method

.method public getInterfaceVersion()I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public onFailure(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl$WifiEventCallback;->this$0:Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->-$$Nest$fgetmLock(Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl$WifiEventCallback;->this$0:Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->-$$Nest$fputmWifi(Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;)V

    .line 11
    .line 12
    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl$WifiEventCallback;->this$0:Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->-$$Nest$fgetmFrameworkCallback(Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;)Lcom/samsung/android/server/wifi/halclient/SemWifiHal$Callback;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl$WifiEventCallback;->this$0:Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;

    .line 24
    .line 25
    invoke-static {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->-$$Nest$fgetmFrameworkCallback(Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;)Lcom/samsung/android/server/wifi/halclient/SemWifiHal$Callback;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-static {p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->halToFrameworkWifiStatusCode(I)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal$Callback;->onFailure(I)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    throw p0
.end method

.method public onStart()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl$WifiEventCallback;->this$0:Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->-$$Nest$fgetmFrameworkCallback(Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;)Lcom/samsung/android/server/wifi/halclient/SemWifiHal$Callback;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl$WifiEventCallback;->this$0:Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;

    .line 11
    .line 12
    invoke-static {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->-$$Nest$fgetmFrameworkCallback(Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;)Lcom/samsung/android/server/wifi/halclient/SemWifiHal$Callback;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal$Callback;->onStart()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onStop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl$WifiEventCallback;->this$0:Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->-$$Nest$fgetmFrameworkCallback(Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;)Lcom/samsung/android/server/wifi/halclient/SemWifiHal$Callback;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl$WifiEventCallback;->this$0:Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;

    .line 11
    .line 12
    invoke-static {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->-$$Nest$fgetmFrameworkCallback(Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;)Lcom/samsung/android/server/wifi/halclient/SemWifiHal$Callback;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal$Callback;->onStop()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onSubsystemRestart(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl$WifiEventCallback;->this$0:Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->-$$Nest$fgetmFrameworkCallback(Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;)Lcom/samsung/android/server/wifi/halclient/SemWifiHal$Callback;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl$WifiEventCallback;->this$0:Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;

    .line 11
    .line 12
    invoke-static {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->-$$Nest$fgetmFrameworkCallback(Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;)Lcom/samsung/android/server/wifi/halclient/SemWifiHal$Callback;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->halToFrameworkWifiStatusCode(I)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal$Callback;->onSubsystemRestart(I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
