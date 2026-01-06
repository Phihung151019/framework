.class Lcom/samsung/android/server/wifi/bigdata/WifiD2dSaLoggingHandler$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/bigdata/WifiD2dSaLoggingHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/bigdata/WifiD2dSaLoggingHandler;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/bigdata/WifiD2dSaLoggingHandler;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/bigdata/WifiD2dSaLoggingHandler$1;->this$0:Lcom/samsung/android/server/wifi/bigdata/WifiD2dSaLoggingHandler;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/bigdata/WifiD2dSaLoggingHandler$1;->this$0:Lcom/samsung/android/server/wifi/bigdata/WifiD2dSaLoggingHandler;

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getTransportInfo()Landroid/net/TransportInfo;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    check-cast p2, Landroid/net/wifi/WifiInfo;

    .line 8
    .line 9
    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/bigdata/WifiD2dSaLoggingHandler;->-$$Nest$fputmWifiInfo(Lcom/samsung/android/server/wifi/bigdata/WifiD2dSaLoggingHandler;Landroid/net/wifi/WifiInfo;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/samsung/android/server/wifi/bigdata/WifiD2dSaLoggingHandler$1;->this$0:Lcom/samsung/android/server/wifi/bigdata/WifiD2dSaLoggingHandler;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/samsung/android/server/wifi/bigdata/WifiD2dSaLoggingHandler;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/bigdata/WifiD2dSaLoggingHandler;)Landroid/net/wifi/WifiInfo;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiD2dSaLoggingHandler$1;->this$0:Lcom/samsung/android/server/wifi/bigdata/WifiD2dSaLoggingHandler;

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/WifiD2dSaLoggingHandler;->-$$Nest$fputmStaFreq(Lcom/samsung/android/server/wifi/bigdata/WifiD2dSaLoggingHandler;I)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiD2dSaLoggingHandler$1;->this$0:Lcom/samsung/android/server/wifi/bigdata/WifiD2dSaLoggingHandler;

    .line 28
    .line 29
    invoke-static {p0}, Lcom/samsung/android/server/wifi/bigdata/WifiD2dSaLoggingHandler;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/bigdata/WifiD2dSaLoggingHandler;)Landroid/net/wifi/WifiInfo;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/WifiD2dSaLoggingHandler;->-$$Nest$fputmStaFreq(Lcom/samsung/android/server/wifi/bigdata/WifiD2dSaLoggingHandler;I)V

    .line 38
    .line 39
    .line 40
    return-void
.end method
