.class Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;-><init>(Lcom/samsung/android/server/wifi/pktcapture/NativePktCaptureCommand;Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$1;->this$0:Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;

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
    const-string v0, "RECEIVED INTENT "

    .line 6
    .line 7
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "PacketCaptureManager"

    .line 12
    .line 13
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x4

    .line 23
    const-string v2, "wifi_state"

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    const/4 p2, 0x3

    .line 32
    if-eq p1, p2, :cond_2

    .line 33
    .line 34
    iget-object p0, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$1;->this$0:Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;

    .line 35
    .line 36
    iget-object p0, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->mStateMachine:Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;

    .line 37
    .line 38
    const/4 p1, 0x6

    .line 39
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    const-string v0, "android.net.wifi.p2p.STATE_CHANGED"

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    const/4 v3, 0x0

    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    const-string p1, "wifi_p2p_state"

    .line 53
    .line 54
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    const/4 p2, 0x2

    .line 59
    if-ne p1, p2, :cond_2

    .line 60
    .line 61
    iget-object p0, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$1;->this$0:Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;

    .line 62
    .line 63
    iget-object p0, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->mStateMachine:Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;

    .line 64
    .line 65
    invoke-virtual {p0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_1
    const-string v0, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 70
    .line 71
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-eqz p1, :cond_2

    .line 76
    .line 77
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    const/16 p2, 0xd

    .line 82
    .line 83
    if-ne p1, p2, :cond_2

    .line 84
    .line 85
    iget-object p0, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$1;->this$0:Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;

    .line 86
    .line 87
    iget-object p0, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->mStateMachine:Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;

    .line 88
    .line 89
    const/4 p1, 0x5

    .line 90
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 91
    .line 92
    .line 93
    :cond_2
    return-void
.end method
