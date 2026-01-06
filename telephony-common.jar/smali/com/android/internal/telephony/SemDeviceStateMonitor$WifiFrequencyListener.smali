.class Lcom/android/internal/telephony/SemDeviceStateMonitor$WifiFrequencyListener;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SemDeviceStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SemDeviceStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiFrequencyListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SemDeviceStateMonitor;


# direct methods
.method static bridge synthetic blacklist -$$Nest$minit(Lcom/android/internal/telephony/SemDeviceStateMonitor$WifiFrequencyListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/SemDeviceStateMonitor$WifiFrequencyListener;->init()V

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/telephony/SemDeviceStateMonitor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 220
    iput-object p1, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor$WifiFrequencyListener;->this$0:Lcom/android/internal/telephony/SemDeviceStateMonitor;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/SemDeviceStateMonitor;Lcom/android/internal/telephony/SemDeviceStateMonitor-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemDeviceStateMonitor$WifiFrequencyListener;-><init>(Lcom/android/internal/telephony/SemDeviceStateMonitor;)V

    return-void
.end method

.method private blacklist init()V
    .locals 3

    .line 237
    iget-object v0, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor$WifiFrequencyListener;->this$0:Lcom/android/internal/telephony/SemDeviceStateMonitor;

    const-string v1, "WifiFrequencyListener init"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SemDeviceStateMonitor;->-$$Nest$mlog(Lcom/android/internal/telephony/SemDeviceStateMonitor;Ljava/lang/String;)V

    .line 238
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v1, 0x1

    .line 239
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xc

    .line 240
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xd

    .line 241
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 242
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 243
    iget-object v1, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor$WifiFrequencyListener;->this$0:Lcom/android/internal/telephony/SemDeviceStateMonitor;

    invoke-static {v1}, Lcom/android/internal/telephony/SemDeviceStateMonitor;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SemDeviceStateMonitor;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 244
    iget-object p0, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor$WifiFrequencyListener;->this$0:Lcom/android/internal/telephony/SemDeviceStateMonitor;

    invoke-static {p0}, Lcom/android/internal/telephony/SemDeviceStateMonitor;->-$$Nest$fgetmWifiFrequencyListener(Lcom/android/internal/telephony/SemDeviceStateMonitor;)Lcom/android/internal/telephony/SemDeviceStateMonitor$WifiFrequencyListener;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method


# virtual methods
.method public whitelist onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 224
    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getTransportInfo()Landroid/net/TransportInfo;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiInfo;

    if-eqz p1, :cond_1

    .line 226
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result p1

    const/16 p2, 0x9c4

    if-ge p1, p2, :cond_0

    sget-object p1, Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;->WIFI_24:Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;->WIFI_HIGH:Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;

    .line 227
    :goto_0
    iget-object p2, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor$WifiFrequencyListener;->this$0:Lcom/android/internal/telephony/SemDeviceStateMonitor;

    invoke-static {p2}, Lcom/android/internal/telephony/SemDeviceStateMonitor;->-$$Nest$fgetmWifiSarPower(Lcom/android/internal/telephony/SemDeviceStateMonitor;)Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;

    move-result-object p2

    if-eq p2, p1, :cond_1

    .line 228
    iget-object p2, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor$WifiFrequencyListener;->this$0:Lcom/android/internal/telephony/SemDeviceStateMonitor;

    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor$WifiFrequencyListener;->this$0:Lcom/android/internal/telephony/SemDeviceStateMonitor;

    invoke-static {v1}, Lcom/android/internal/telephony/SemDeviceStateMonitor;->-$$Nest$fgetmWifiSarPower(Lcom/android/internal/telephony/SemDeviceStateMonitor;)Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v1, 0x67

    invoke-virtual {p2, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 229
    iget-object p2, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor$WifiFrequencyListener;->this$0:Lcom/android/internal/telephony/SemDeviceStateMonitor;

    invoke-static {p2, p1}, Lcom/android/internal/telephony/SemDeviceStateMonitor;->-$$Nest$fputmWifiSarPower(Lcom/android/internal/telephony/SemDeviceStateMonitor;Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;)V

    .line 230
    iget-object p0, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor$WifiFrequencyListener;->this$0:Lcom/android/internal/telephony/SemDeviceStateMonitor;

    const-string p1, "Wifi frequency changed"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/SemDeviceStateMonitor;->-$$Nest$mlog(Lcom/android/internal/telephony/SemDeviceStateMonitor;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
