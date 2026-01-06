.class Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$DefaultState;
.super Lcom/android/internal/util/State;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    if-eq v0, v1, :cond_3

    .line 7
    .line 8
    const/4 v2, 0x4

    .line 9
    if-eq v0, v2, :cond_2

    .line 10
    .line 11
    const/16 v2, 0x9

    .line 12
    .line 13
    if-eq v0, v2, :cond_1

    .line 14
    .line 15
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$sfgetDBG()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v2, "unhandled message : "

    .line 24
    .line 25
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 29
    .line 30
    iget p1, p1, Landroid/os/Message;->what:I

    .line 31
    .line 32
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->access$000(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    const-string p1, "SemWifiUsageMonitor"

    .line 44
    .line 45
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    :cond_0
    return v1

    .line 49
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 50
    .line 51
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$msaveHistory(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)V

    .line 52
    .line 53
    .line 54
    return v1

    .line 55
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 56
    .line 57
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$mupdateHistoryAndNetworks(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)V

    .line 58
    .line 59
    .line 60
    return v1

    .line 61
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 62
    .line 63
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmWifiEnabled(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_4

    .line 68
    .line 69
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 70
    .line 71
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmEnabledState(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Lcom/android/internal/util/State;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 76
    .line 77
    .line 78
    return v1

    .line 79
    :cond_4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 80
    .line 81
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmDisabledState(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Lcom/android/internal/util/State;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 86
    .line 87
    .line 88
    return v1
.end method
