.class Lcom/samsung/android/server/wifi/ap/nsd/NsdClient$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "wifi Connected:"

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v2, ",isNSDServiceStarted:"

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;

    .line 25
    .line 26
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->-$$Nest$fgetisServiceStarted(Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;

    .line 41
    .line 42
    const/16 v1, 0x8

    .line 43
    .line 44
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->-$$Nest$fputmRetryWifiInfoFetch(Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;I)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;

    .line 48
    .line 49
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->-$$Nest$fgetmClientHandler(Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;)Lcom/samsung/android/server/wifi/ap/nsd/NsdClient$ClientHandler;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 54
    .line 55
    .line 56
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;

    .line 5
    .line 6
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->-$$Nest$mgetConnectivityManager(Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;)Landroid/net/ConnectivityManager;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string p2, "lpInterface:"

    .line 26
    .line 27
    invoke-static {p2, p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->-$$Nest$fgetmLinkProperties(Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;)Landroid/net/LinkProperties;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p2, p1}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;

    .line 14
    .line 15
    invoke-static {p0, p2}, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->-$$Nest$fputmLinkProperties(Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;Landroid/net/LinkProperties;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "wifi disconnected:"

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v2, ",isNSDServiceStarted:"

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;

    .line 25
    .line 26
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->-$$Nest$fgetisServiceStarted(Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;

    .line 41
    .line 42
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->-$$Nest$fgetisServiceStarted(Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;

    .line 49
    .line 50
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->-$$Nest$fgetmClientHandler(Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;)Lcom/samsung/android/server/wifi/ap/nsd/NsdClient$ClientHandler;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const/4 v1, 0x2

    .line 55
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 56
    .line 57
    .line 58
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;

    .line 59
    .line 60
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->-$$Nest$fgetmClientHandler(Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;)Lcom/samsung/android/server/wifi/ap/nsd/NsdClient$ClientHandler;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const/16 v1, 0x8

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 67
    .line 68
    .line 69
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method
