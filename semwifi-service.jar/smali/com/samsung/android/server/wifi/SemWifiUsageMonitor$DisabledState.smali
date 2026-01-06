.class Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$DisabledState;
.super Lcom/android/internal/util/State;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DisabledState"
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$DisabledState;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

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
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$sfgetDBG()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "SemWifiUsageMonitor"

    .line 8
    .line 9
    const-string v1, "DisabledState.enter()"

    .line 10
    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$DisabledState;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 15
    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    invoke-static {p0, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fputmDisabledStateEnterTime(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;J)V

    .line 21
    .line 22
    .line 23
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
    const-string v0, "DisabledState.exit()"

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
    .locals 0

    .line 1
    iget p0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 p1, 0x3

    .line 4
    if-eq p0, p1, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return p0

    .line 8
    :cond_0
    const-string p0, "SemWifiUsageMonitor"

    .line 9
    .line 10
    const-string p1, "CMD_UPDATE_WIFI_USAGE on DisabledState - Ignore."

    .line 11
    .line 12
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    return p0
.end method
