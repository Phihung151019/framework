.class Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$3;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/SemFrameworkFacade;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

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
    .locals 2

    .line 1
    const-string p1, "wifi_state"

    .line 2
    .line 3
    const/16 v0, 0xe

    .line 4
    .line 5
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const-string v1, "android.net.wifi.extra.WIFI_AP_INTERFACE_NAME"

    .line 10
    .line 11
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    check-cast p2, Ljava/lang/String;

    .line 16
    .line 17
    const/16 v1, 0xd

    .line 18
    .line 19
    if-ne v1, p1, :cond_1

    .line 20
    .line 21
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->-$$Nest$fgetmConnected(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    or-int/lit8 v0, v0, 0x8

    .line 28
    .line 29
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->-$$Nest$fputmConnected(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;I)V

    .line 30
    .line 31
    .line 32
    if-eqz p2, :cond_0

    .line 33
    .line 34
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 35
    .line 36
    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->-$$Nest$fputMHS_INTERFACE_NAME(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 41
    .line 42
    const-string p2, "swlan0"

    .line 43
    .line 44
    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->-$$Nest$fputMHS_INTERFACE_NAME(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 48
    .line 49
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->-$$Nest$fgetmTrafficStatsList(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)Ljava/util/HashMap;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 54
    .line 55
    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->-$$Nest$fgetMHS_INTERFACE_NAME(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 64
    .line 65
    if-nez p1, :cond_3

    .line 66
    .line 67
    new-instance p1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 68
    .line 69
    invoke-direct {p1}, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;-><init>()V

    .line 70
    .line 71
    .line 72
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 73
    .line 74
    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->-$$Nest$fgetmTrafficStatsList(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)Ljava/util/HashMap;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 79
    .line 80
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->-$$Nest$fgetMHS_INTERFACE_NAME(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_1
    const/16 p2, 0xb

    .line 89
    .line 90
    if-eq p2, p1, :cond_2

    .line 91
    .line 92
    if-ne v0, p1, :cond_3

    .line 93
    .line 94
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 95
    .line 96
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->-$$Nest$fgetmConnected(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)I

    .line 97
    .line 98
    .line 99
    move-result p2

    .line 100
    and-int/lit8 p2, p2, -0x9

    .line 101
    .line 102
    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->-$$Nest$fputmConnected(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;I)V

    .line 103
    .line 104
    .line 105
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 106
    .line 107
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->-$$Nest$fputisEbpfSupported(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)V

    .line 108
    .line 109
    .line 110
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 111
    .line 112
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->-$$Nest$fgetmConnected(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)I

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    if-lez p1, :cond_4

    .line 117
    .line 118
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 119
    .line 120
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->-$$Nest$fgetmPolled(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    if-nez p1, :cond_4

    .line 129
    .line 130
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 131
    .line 132
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->-$$Nest$mstartTrafficPoll(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)V

    .line 133
    .line 134
    .line 135
    :cond_4
    return-void
.end method
