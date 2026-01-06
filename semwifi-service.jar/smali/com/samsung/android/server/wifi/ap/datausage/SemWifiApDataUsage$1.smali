.class Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$1;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Landroid/net/TetheringManager$TetheringEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$1;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onUpstreamChanged(Landroid/net/Network;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$1;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "connectivity"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->-$$Nest$sfgetTAG()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-string v1, "onUpstreamChanged: WIFI"

    .line 33
    .line 34
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$1;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 38
    .line 39
    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->-$$Nest$mupStreamUpdated(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;I)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    const/4 v0, 0x0

    .line 44
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_1

    .line 49
    .line 50
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->-$$Nest$sfgetTAG()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const-string v0, "onUpstreamChanged: Cellular"

    .line 55
    .line 56
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$1;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 60
    .line 61
    const/4 p1, 0x2

    .line 62
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->-$$Nest$mupStreamUpdated(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;I)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$1;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 67
    .line 68
    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->-$$Nest$mupStreamUpdated(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;I)V

    .line 69
    .line 70
    .line 71
    :cond_2
    return-void
.end method
