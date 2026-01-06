.class Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->registerBR()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$2;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;

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
    const-string p1, "enable"

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$2;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;

    .line 9
    .line 10
    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->-$$Nest$fgetisMhsAiServiceBinded(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;)Z

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    if-nez p2, :cond_0

    .line 15
    .line 16
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$2;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;

    .line 17
    .line 18
    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->-$$Nest$fgetmServiceDetectionHandler(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;)Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$ServiceDetectionHandler;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    const/4 v1, 0x6

    .line 23
    invoke-static {p2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 28
    .line 29
    .line 30
    :cond_0
    const/4 p2, 0x2

    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$2;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->-$$Nest$fgetmServiceDetectionHandler(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;)Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$ServiceDetectionHandler;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const/4 v1, 0x3

    .line 40
    invoke-static {p1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$2;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;

    .line 48
    .line 49
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->-$$Nest$fgettoastEngOrDebug(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_1

    .line 54
    .line 55
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$2;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;

    .line 56
    .line 57
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;)Landroid/content/Context;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const-string v1, "Start the NSD+"

    .line 62
    .line 63
    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 68
    .line 69
    .line 70
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$2;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;

    .line 71
    .line 72
    const-string p1, "Start the NSD+."

    .line 73
    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->addEvent(Ljava/lang/String;I)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$2;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;

    .line 79
    .line 80
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->-$$Nest$fgetmServiceDetectionHandler(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;)Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$ServiceDetectionHandler;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    const/4 v1, 0x4

    .line 85
    invoke-static {p1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$2;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;

    .line 93
    .line 94
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->-$$Nest$fgettoastEngOrDebug(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;)Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    const-string v1, "Stop the NSD+"

    .line 99
    .line 100
    if-eqz p1, :cond_3

    .line 101
    .line 102
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$2;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;

    .line 103
    .line 104
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;)Landroid/content/Context;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 113
    .line 114
    .line 115
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$2;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;

    .line 116
    .line 117
    invoke-virtual {p0, v1, p2}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->addEvent(Ljava/lang/String;I)V

    .line 118
    .line 119
    .line 120
    return-void
.end method
