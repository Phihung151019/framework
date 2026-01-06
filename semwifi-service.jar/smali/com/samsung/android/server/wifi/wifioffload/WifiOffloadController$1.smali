.class Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController$1;->this$0:Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-string v1, "wifi_state"

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    const/4 v3, 0x0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    const/4 p1, 0x4

    .line 18
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController$1;->this$0:Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;

    .line 23
    .line 24
    const/4 p2, 0x2

    .line 25
    if-eq p1, p2, :cond_1

    .line 26
    .line 27
    const/4 p2, 0x3

    .line 28
    if-ne p1, p2, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v2, v3

    .line 32
    :cond_1
    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mIsWifiEnabled:Z

    .line 33
    .line 34
    if-eqz v2, :cond_7

    .line 35
    .line 36
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mIsTimerRunning:Z

    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    const-string v0, "android.net.wifi.STATE_CHANGE"

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_4

    .line 46
    .line 47
    const-string p1, "networkInfo"

    .line 48
    .line 49
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Landroid/net/NetworkInfo;

    .line 54
    .line 55
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController$1;->this$0:Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;

    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    sget-object p2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 62
    .line 63
    if-ne p1, p2, :cond_3

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_3
    move v2, v3

    .line 67
    :goto_1
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mIsWifiConnected:Z

    .line 68
    .line 69
    return-void

    .line 70
    :cond_4
    const-string v0, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 71
    .line 72
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-eqz p1, :cond_7

    .line 77
    .line 78
    const/16 p1, 0xe

    .line 79
    .line 80
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController$1;->this$0:Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;

    .line 85
    .line 86
    const/16 p2, 0xc

    .line 87
    .line 88
    if-eq p1, p2, :cond_6

    .line 89
    .line 90
    const/16 p2, 0xd

    .line 91
    .line 92
    if-ne p1, p2, :cond_5

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_5
    move v2, v3

    .line 96
    :cond_6
    :goto_2
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mIsWifiApEnabled:Z

    .line 97
    .line 98
    :cond_7
    return-void
.end method
