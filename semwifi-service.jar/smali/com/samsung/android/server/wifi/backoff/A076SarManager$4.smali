.class Lcom/samsung/android/server/wifi/backoff/A076SarManager$4;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/backoff/A076SarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/backoff/A076SarManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/backoff/A076SarManager;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/A076SarManager$4;->this$0:Lcom/samsung/android/server/wifi/backoff/A076SarManager;

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
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "Received : "

    .line 6
    .line 7
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "SemWifiBackOff.Sar"

    .line 12
    .line 13
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    const-string v0, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_3

    .line 23
    .line 24
    const-string p1, "wifi_state"

    .line 25
    .line 26
    const/16 v0, 0xe

    .line 27
    .line 28
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    const/16 p2, 0xc

    .line 33
    .line 34
    if-eq p1, p2, :cond_1

    .line 35
    .line 36
    const/16 p2, 0xd

    .line 37
    .line 38
    if-ne p1, p2, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/A076SarManager$4;->this$0:Lcom/samsung/android/server/wifi/backoff/A076SarManager;

    .line 42
    .line 43
    const/4 p2, 0x0

    .line 44
    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/backoff/A076SarManager;->-$$Nest$fputmHotspotEnabled(Lcom/samsung/android/server/wifi/backoff/A076SarManager;Z)V

    .line 45
    .line 46
    .line 47
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/A076SarManager$4;->this$0:Lcom/samsung/android/server/wifi/backoff/A076SarManager;

    .line 48
    .line 49
    invoke-static {p0}, Lcom/samsung/android/server/wifi/backoff/A076SarManager;->-$$Nest$fgetmHotspotEnabled(Lcom/samsung/android/server/wifi/backoff/A076SarManager;)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/A076SarManager;->checkAndSetBackoff(Z)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/A076SarManager$4;->this$0:Lcom/samsung/android/server/wifi/backoff/A076SarManager;

    .line 58
    .line 59
    const/4 p2, 0x1

    .line 60
    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/backoff/A076SarManager;->-$$Nest$fputmHotspotEnabled(Lcom/samsung/android/server/wifi/backoff/A076SarManager;Z)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/A076SarManager$4;->this$0:Lcom/samsung/android/server/wifi/backoff/A076SarManager;

    .line 64
    .line 65
    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/A076SarManager;->-$$Nest$fgetmIsGripping1(Lcom/samsung/android/server/wifi/backoff/A076SarManager;)Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-nez p1, :cond_2

    .line 70
    .line 71
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/A076SarManager$4;->this$0:Lcom/samsung/android/server/wifi/backoff/A076SarManager;

    .line 72
    .line 73
    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/A076SarManager;->-$$Nest$fgetmIsGripping2(Lcom/samsung/android/server/wifi/backoff/A076SarManager;)Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-nez p1, :cond_2

    .line 78
    .line 79
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/A076SarManager$4;->this$0:Lcom/samsung/android/server/wifi/backoff/A076SarManager;

    .line 80
    .line 81
    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/A076SarManager;->-$$Nest$fgetmIsGripLteSubSensor(Lcom/samsung/android/server/wifi/backoff/A076SarManager;)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-nez p1, :cond_2

    .line 86
    .line 87
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/A076SarManager$4;->this$0:Lcom/samsung/android/server/wifi/backoff/A076SarManager;

    .line 88
    .line 89
    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/A076SarManager;->-$$Nest$fgetmHotspotEnabled(Lcom/samsung/android/server/wifi/backoff/A076SarManager;)Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_3

    .line 94
    .line 95
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/A076SarManager$4;->this$0:Lcom/samsung/android/server/wifi/backoff/A076SarManager;

    .line 96
    .line 97
    invoke-static {p0}, Lcom/samsung/android/server/wifi/backoff/A076SarManager;->-$$Nest$fgetmHotspotEnabled(Lcom/samsung/android/server/wifi/backoff/A076SarManager;)Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/A076SarManager;->checkAndSetBackoff(Z)V

    .line 102
    .line 103
    .line 104
    :cond_3
    return-void
.end method
