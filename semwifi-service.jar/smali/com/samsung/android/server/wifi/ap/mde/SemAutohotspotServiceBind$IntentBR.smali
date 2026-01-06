.class Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind$IntentBR;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntentBR"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;


# direct methods
.method public static synthetic $r8$lambda$sbMgiD0xEm5ZxNLNXPnQ4_uDES4(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind$IntentBR;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind$IntentBR;->lambda$onReceive$0(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind$IntentBR;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind$IntentBR;-><init>(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;)V

    return-void
.end method

.method private synthetic lambda$onReceive$0(Landroid/content/Intent;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "com.samsung.android.mcf.autohotspot"

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind$IntentBR;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;

    .line 12
    .line 13
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;)Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 18
    .line 19
    .line 20
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
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind$IntentBR;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;->-$$Nest$fgetTAG(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "rcvd:"

    .line 12
    .line 13
    invoke-static {v1, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiVersionProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getWifiChipVendor()Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v1, "com.samsung.android.net.wifi.WIFI_AP_STA_STATE_CHANGED"

    .line 37
    .line 38
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    const/4 v2, 0x1

    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    :cond_0
    :goto_0
    move p1, v2

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 48
    .line 49
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_2

    .line 54
    .line 55
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-nez p1, :cond_0

    .line 60
    .line 61
    const-string p1, "QCA"

    .line 62
    .line 63
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_0

    .line 68
    .line 69
    const/16 p1, 0x3e8

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 73
    .line 74
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_3

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_3
    const-string v0, "android.net.wifi.STATE_CHANGE"

    .line 82
    .line 83
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_4

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_4
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 91
    .line 92
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    if-eqz p1, :cond_5

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_5
    const/4 p1, 0x0

    .line 100
    move v3, v2

    .line 101
    move v2, p1

    .line 102
    move p1, v3

    .line 103
    :goto_1
    if-eqz v2, :cond_6

    .line 104
    .line 105
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind$IntentBR;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;

    .line 106
    .line 107
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;->-$$Nest$fgetmyHandler(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;)Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind$MyHandler;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    new-instance v1, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind$IntentBR$$ExternalSyntheticLambda0;

    .line 112
    .line 113
    invoke-direct {v1, p0, p2}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind$IntentBR$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind$IntentBR;Landroid/content/Intent;)V

    .line 114
    .line 115
    .line 116
    int-to-long p0, p1

    .line 117
    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 118
    .line 119
    .line 120
    :cond_6
    return-void
.end method
