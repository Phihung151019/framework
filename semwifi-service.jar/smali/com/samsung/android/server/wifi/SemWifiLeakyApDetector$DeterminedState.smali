.class Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DeterminedState;
.super Lcom/android/internal/util/State;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeterminedState"
.end annotation


# instance fields
.field private detectionCount:I

.field private detectionTime:J

.field private stopMonitoringDetectionEvent:Z

.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DeterminedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

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
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DeterminedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, " enter"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$mlogControlHistory(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-wide/16 v0, 0x0

    .line 28
    .line 29
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DeterminedState;->detectionTime:J

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DeterminedState;->detectionCount:I

    .line 33
    .line 34
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DeterminedState;->stopMonitoringDetectionEvent:Z

    .line 35
    .line 36
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DeterminedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 37
    .line 38
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DeterminedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 43
    .line 44
    iget-object v2, v2, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mOnWifiUsabilityStatsListener:Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->removeOnWifiUsabilityStatsListener(Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;)V

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DeterminedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 50
    .line 51
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DeterminedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 66
    .line 67
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$fgetmDetectionResult(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)Ljava/util/HashMap;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-nez v2, :cond_1

    .line 76
    .line 77
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DeterminedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 78
    .line 79
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$fgetmDetectionResult(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)Ljava/util/HashMap;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-nez v2, :cond_0

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DeterminedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 91
    .line 92
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$fgetmDetectionResult(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)Ljava/util/HashMap;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    check-cast v0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;

    .line 101
    .line 102
    if-eqz v0, :cond_2

    .line 103
    .line 104
    iget v0, v0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;->leakyApDeterminedType:I

    .line 105
    .line 106
    if-lez v0, :cond_2

    .line 107
    .line 108
    const/4 v0, 0x1

    .line 109
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DeterminedState;->stopMonitoringDetectionEvent:Z

    .line 110
    .line 111
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DeterminedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 112
    .line 113
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$fgetmIsDetectionResultUpdated(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-eqz v0, :cond_2

    .line 118
    .line 119
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DeterminedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 120
    .line 121
    const/16 v1, 0x12

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DeterminedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 128
    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 130
    .line 131
    .line 132
    move-result-wide v2

    .line 133
    invoke-static {v1, v0, v2, v3}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$mupdateDetectionResult(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;IJ)V

    .line 134
    .line 135
    .line 136
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DeterminedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 137
    .line 138
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$mstoreDetectionResultsToFile(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)V

    .line 139
    .line 140
    .line 141
    return-void
.end method

.method public exit()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DeterminedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string p0, " exit"

    .line 16
    .line 17
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-static {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$mlogControlHistory(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 11

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq v0, v1, :cond_3

    .line 6
    .line 7
    const/16 v3, 0x8

    .line 8
    .line 9
    const/16 v4, 0x12

    .line 10
    .line 11
    if-eq v0, v3, :cond_1

    .line 12
    .line 13
    if-eq v0, v4, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return p0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DeterminedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiTwtMonitor()Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->deactivateScheduledPm()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DeterminedState;->stopMonitoringDetectionEvent:Z

    .line 32
    .line 33
    if-nez v0, :cond_4

    .line 34
    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 36
    .line 37
    .line 38
    move-result-wide v5

    .line 39
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DeterminedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 40
    .line 41
    const/4 v3, 0x4

    .line 42
    invoke-static {v0, v3, v5, v6}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$mupdateDetectionResult(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;IJ)V

    .line 43
    .line 44
    .line 45
    iget-wide v7, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DeterminedState;->detectionTime:J

    .line 46
    .line 47
    sub-long v7, v5, v7

    .line 48
    .line 49
    const-wide/16 v9, 0x2710

    .line 50
    .line 51
    cmp-long v0, v7, v9

    .line 52
    .line 53
    if-gtz v0, :cond_2

    .line 54
    .line 55
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DeterminedState;->detectionCount:I

    .line 56
    .line 57
    add-int/2addr v0, v2

    .line 58
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DeterminedState;->detectionCount:I

    .line 59
    .line 60
    if-lt v0, v1, :cond_2

    .line 61
    .line 62
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DeterminedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 63
    .line 64
    invoke-static {v0, v3}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$mupdateLeakyApDeterminationType(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;I)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DeterminedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 68
    .line 69
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$mstoreDetectionResultsToFile(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)V

    .line 70
    .line 71
    .line 72
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DeterminedState;->stopMonitoringDetectionEvent:Z

    .line 73
    .line 74
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DeterminedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 75
    .line 76
    invoke-virtual {v0, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 77
    .line 78
    .line 79
    :cond_2
    iput-wide v5, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DeterminedState;->detectionTime:J

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DeterminedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 83
    .line 84
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$fgetmNotDeterminedState(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$NotDeterminedState;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 89
    .line 90
    .line 91
    :cond_4
    :goto_0
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$sfgetDBG()Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_5

    .line 96
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v1, ": "

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DeterminedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 115
    .line 116
    iget p1, p1, Landroid/os/Message;->what:I

    .line 117
    .line 118
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$meventToString(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;I)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    const-string p1, "SemWifiLeakyApDetector"

    .line 130
    .line 131
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    :cond_5
    return v2
.end method
