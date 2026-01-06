.class Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$DisconnectedState;
.super Lcom/android/internal/util/State;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DisconnectedState"
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$DisconnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$sfgetDBG()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const-string p0, "SemWifiUsageMonitor"

    .line 8
    .line 9
    const-string v0, "DisconnectedState.enter()"

    .line 10
    .line 11
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public exit()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$sfgetDBG()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const-string p0, "SemWifiUsageMonitor"

    .line 8
    .line 9
    const-string v0, "DisconnectedState.exit()"

    .line 10
    .line 11
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$sfgetDBG()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "SemWifiUsageMonitor"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$DisconnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 10
    .line 11
    iget v2, p1, Landroid/os/Message;->what:I

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->smToString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    const/4 v3, 0x0

    .line 24
    if-eq v0, v2, :cond_1

    .line 25
    .line 26
    return v3

    .line 27
    :cond_1
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$sfgetDBG()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    const-string v0, "CMD_UPDATE_WIFI_USAGE - Update"

    .line 34
    .line 35
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$DisconnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 39
    .line 40
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    if-ne p1, v0, :cond_3

    .line 44
    .line 45
    move v3, v0

    .line 46
    :cond_3
    invoke-static {p0, v3}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$mupdateWifiUsage$1(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;Z)V

    .line 47
    .line 48
    .line 49
    return v0
.end method
