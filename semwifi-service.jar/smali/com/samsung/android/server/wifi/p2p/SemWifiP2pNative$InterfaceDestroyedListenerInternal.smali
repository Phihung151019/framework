.class Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative$InterfaceDestroyedListenerInternal;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceDestroyedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InterfaceDestroyedListenerInternal"
.end annotation


# instance fields
.field private final mExternalListener:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceDestroyedListener;

.field private mValid:Z

.field final synthetic this$0:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceDestroyedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative$InterfaceDestroyedListenerInternal;->this$0:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative$InterfaceDestroyedListenerInternal;->mExternalListener:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceDestroyedListener;

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative$InterfaceDestroyedListenerInternal;->mValid:Z

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public onDestroyed(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "P2P InterfaceDestroyedListener "

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "SemWifiP2pNative"

    .line 8
    .line 9
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative$InterfaceDestroyedListenerInternal;->mValid:Z

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const-string p0, "Ignoring stale interface destroyed listener"

    .line 17
    .line 18
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative$InterfaceDestroyedListenerInternal;->teardownAndInvalidate(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative$InterfaceDestroyedListenerInternal;->mExternalListener:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceDestroyedListener;

    .line 26
    .line 27
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceDestroyedListener;->onDestroyed(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public teardownAndInvalidate(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative$InterfaceDestroyedListenerInternal;->this$0:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->-$$Nest$fgetmSupplicantP2pIfaceHal(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;)Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->teardownIface(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative$InterfaceDestroyedListenerInternal;->this$0:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->-$$Nest$fgetmWifiP2pMonitor(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;)Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->stopMonitoring(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative$InterfaceDestroyedListenerInternal;->this$0:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;

    .line 26
    .line 27
    invoke-static {p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->-$$Nest$fputmWifiP2pIface(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;)V

    .line 28
    .line 29
    .line 30
    const/4 p1, 0x0

    .line 31
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative$InterfaceDestroyedListenerInternal;->mValid:Z

    .line 32
    .line 33
    return-void
.end method
