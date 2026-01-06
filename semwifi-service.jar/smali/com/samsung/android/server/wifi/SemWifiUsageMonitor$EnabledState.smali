.class Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$EnabledState;
.super Lcom/android/internal/util/State;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EnabledState"
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$EnabledState;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

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
    .locals 3

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
    const-string v1, "EnabledState.enter()"

    .line 10
    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$EnabledState;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 15
    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fputmEnabledStateEnterTime(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;J)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$EnabledState;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmClock(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Lcom/samsung/android/server/wifi/util/SemClock;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    .line 30
    .line 31
    .line 32
    move-result-wide v1

    .line 33
    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fputmLastWifiEnabledUpdatedTimeElapsed(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;J)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$EnabledState;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 37
    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 39
    .line 40
    .line 41
    move-result-wide v1

    .line 42
    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fputmLastWifiEnabledUpdatedTimeEpoch(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;J)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$EnabledState;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 46
    .line 47
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmIsWifiConnected(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$EnabledState;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 54
    .line 55
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmConnectedState(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Lcom/android/internal/util/State;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$EnabledState;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 64
    .line 65
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmDisconnectedState(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Lcom/android/internal/util/State;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public exit()V
    .locals 6

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
    const-string v1, "EnabledState.exit()"

    .line 10
    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$sfgetmMapLock()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    monitor-enter v0

    .line 19
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$EnabledState;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 20
    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    invoke-static {v1, v2, v3}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$mconvertTimeToSimpleDateFormat(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;J)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$EnabledState;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 30
    .line 31
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmDailyHistory(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Ljava/util/Map;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    new-instance v3, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 36
    .line 37
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$EnabledState;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 38
    .line 39
    invoke-direct {v3, v4}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;-><init>(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)V

    .line 40
    .line 41
    .line 42
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$EnabledState;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 46
    .line 47
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmClock(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Lcom/samsung/android/server/wifi/util/SemClock;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    .line 52
    .line 53
    .line 54
    move-result-wide v2

    .line 55
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$EnabledState;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 56
    .line 57
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmLastWifiEnabledUpdatedTimeElapsed(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)J

    .line 58
    .line 59
    .line 60
    move-result-wide v4

    .line 61
    sub-long/2addr v2, v4

    .line 62
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$EnabledState;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 63
    .line 64
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmTotalUsageHistory(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-virtual {v4, v2, v3}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->addWifiEnabledTime(J)V

    .line 69
    .line 70
    .line 71
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$EnabledState;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 72
    .line 73
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmTotalUsageSinceBoot(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    invoke-virtual {v4, v2, v3}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->addWifiEnabledTime(J)V

    .line 78
    .line 79
    .line 80
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$EnabledState;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 81
    .line 82
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmDailyHistory(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Ljava/util/Map;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    check-cast v1, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 91
    .line 92
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->addWifiEnabledTime(J)V

    .line 93
    .line 94
    .line 95
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$EnabledState;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 97
    .line 98
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$msaveHistory(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :catchall_0
    move-exception p0

    .line 103
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    throw p0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    const/4 v1, 0x1

    .line 5
    if-eq p1, v0, :cond_2

    .line 6
    .line 7
    const/4 v0, 0x6

    .line 8
    const/4 v2, 0x7

    .line 9
    const/4 v3, 0x0

    .line 10
    if-eq p1, v0, :cond_0

    .line 11
    .line 12
    if-eq p1, v2, :cond_0

    .line 13
    .line 14
    const/16 v0, 0x8

    .line 15
    .line 16
    if-eq p1, v0, :cond_0

    .line 17
    .line 18
    return v3

    .line 19
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$EnabledState;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 20
    .line 21
    if-ne p1, v2, :cond_1

    .line 22
    .line 23
    move p1, v1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move p1, v3

    .line 26
    :goto_0
    const/4 v0, 0x3

    .line 27
    invoke-virtual {p0, v0, p1, v3}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-wide/16 v2, 0x64

    .line 32
    .line 33
    invoke-virtual {p0, p1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$EnabledState;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 38
    .line 39
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmIsWifiConnected(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_3

    .line 44
    .line 45
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$EnabledState;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 46
    .line 47
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmConnectedState(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Lcom/android/internal/util/State;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$EnabledState;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 56
    .line 57
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmDisconnectedState(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Lcom/android/internal/util/State;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 62
    .line 63
    .line 64
    :goto_1
    return v1
.end method
