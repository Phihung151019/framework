.class Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->setBroadCastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager$1;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;

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
    const-string p2, "android.intent.action.LOCALE_CHANGED"

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager$1;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;

    .line 14
    .line 15
    new-instance p2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager$1;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;)Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const v1, 0x1041135

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v0, "("

    .line 41
    .line 42
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager$1;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;

    .line 46
    .line 47
    invoke-static {v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;)Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    const v3, 0x104112a

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v2, ")"

    .line 66
    .line 67
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->-$$Nest$fputmChannelNameGeneral(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager$1;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;

    .line 78
    .line 79
    new-instance p2, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager$1;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;

    .line 85
    .line 86
    invoke-static {v3}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;)Landroid/content/Context;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager$1;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;

    .line 105
    .line 106
    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;)Landroid/content/Context;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    const v1, 0x1041129

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->-$$Nest$fputmChannelNameEmergency(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager$1;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;

    .line 135
    .line 136
    invoke-static {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->-$$Nest$minitNotificationChannel(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;)V

    .line 137
    .line 138
    .line 139
    :cond_0
    return-void
.end method
