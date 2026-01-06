.class Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$WifiEventCallbackV15;
.super Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiEventCallback$Stub;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiEventCallbackV15"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;


# direct methods
.method private constructor <init>(Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$WifiEventCallbackV15;->this$0:Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiEventCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$WifiEventCallbackV15;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;)V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$WifiEventCallbackV15;->this$0:Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->-$$Nest$fgetmFrameworkCallback(Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;)Lcom/samsung/android/server/wifi/halclient/SemWifiHal$Callback;

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
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$WifiEventCallbackV15;->this$0:Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;

    .line 11
    .line 12
    invoke-static {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->-$$Nest$fgetmHalCallback10(Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiEventCallback;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiEventCallback;->onFailure(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onStart()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$WifiEventCallbackV15;->this$0:Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->-$$Nest$fgetmFrameworkCallback(Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;)Lcom/samsung/android/server/wifi/halclient/SemWifiHal$Callback;

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
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$WifiEventCallbackV15;->this$0:Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;

    .line 11
    .line 12
    invoke-static {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->-$$Nest$fgetmHalCallback10(Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiEventCallback;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiEventCallback;->onStart()V

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
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$WifiEventCallbackV15;->this$0:Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->-$$Nest$fgetmFrameworkCallback(Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;)Lcom/samsung/android/server/wifi/halclient/SemWifiHal$Callback;

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
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$WifiEventCallbackV15;->this$0:Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;

    .line 11
    .line 12
    invoke-static {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->-$$Nest$fgetmHalCallback10(Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiEventCallback;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiEventCallback;->onStop()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onSubsystemRestart(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$WifiEventCallbackV15;->this$0:Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->-$$Nest$fgetmFrameworkCallback(Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;)Lcom/samsung/android/server/wifi/halclient/SemWifiHal$Callback;

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
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$WifiEventCallbackV15;->this$0:Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;

    .line 11
    .line 12
    invoke-static {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->-$$Nest$fgetmFrameworkCallback(Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;)Lcom/samsung/android/server/wifi/halclient/SemWifiHal$Callback;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    iget p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->code:I

    .line 17
    .line 18
    invoke-static {p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->halToFrameworkWifiStatusCode(I)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal$Callback;->onSubsystemRestart(I)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
