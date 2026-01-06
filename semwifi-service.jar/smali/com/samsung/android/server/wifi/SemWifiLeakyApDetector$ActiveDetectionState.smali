.class Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;
.super Lcom/android/internal/util/State;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActiveDetectionState"
.end annotation


# static fields
.field static final DETECTION_INTERVAL_MS:I = 0x2710


# instance fields
.field private activeDetectionTrial:I

.field private cmdRetryCnt:I

.field private detectionCount:I

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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

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
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

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
    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;->cmdRetryCnt:I

    .line 29
    .line 30
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;->detectionCount:I

    .line 31
    .line 32
    const/4 v0, 0x5

    .line 33
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;->activeDetectionTrial:I

    .line 34
    .line 35
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const/4 v1, 0x1

    .line 42
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo(Z)Landroid/net/wifi/WifiInfo;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    invoke-static {v1, v0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$fputmRssi(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;I)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 58
    .line 59
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$fgetmIsScreenOn(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_0

    .line 64
    .line 65
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 66
    .line 67
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$fgetmRssi(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    const/16 v1, -0x3c

    .line 72
    .line 73
    if-lt v0, v1, :cond_0

    .line 74
    .line 75
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 76
    .line 77
    const/16 v1, 0xd

    .line 78
    .line 79
    const-wide/16 v2, 0x2710

    .line 80
    .line 81
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessageDelayed(IJ)V

    .line 82
    .line 83
    .line 84
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 85
    .line 86
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 95
    .line 96
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mOnWifiUsabilityStatsListener:Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;

    .line 97
    .line 98
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->addOnWifiUsabilityStatsListener(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;)V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public exit()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

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
    const-string v2, " exit"

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
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 28
    .line 29
    const/16 v0, 0xd

    .line 30
    .line 31
    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->access$200(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;I)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x2

    .line 5
    if-eq v0, v2, :cond_4

    .line 6
    .line 7
    const-wide/16 v3, 0x2710

    .line 8
    .line 9
    const/4 v5, 0x0

    .line 10
    const/16 v6, 0xd

    .line 11
    .line 12
    if-eq v0, v6, :cond_0

    .line 13
    .line 14
    packed-switch v0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    return v5

    .line 18
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 19
    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v3

    .line 24
    invoke-static {v0, v1, v3, v4}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$mupdateDetectionResult(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;IJ)V

    .line 25
    .line 26
    .line 27
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;->detectionCount:I

    .line 28
    .line 29
    add-int/2addr v0, v1

    .line 30
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;->detectionCount:I

    .line 31
    .line 32
    if-lt v0, v2, :cond_5

    .line 33
    .line 34
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 35
    .line 36
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$mupdateLeakyApDeterminationType(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;I)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 40
    .line 41
    invoke-static {v0, v6}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->access$500(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;I)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 45
    .line 46
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$fgetmDeterminedState(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DeterminedState;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v0, v2}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 51
    .line 52
    .line 53
    goto/16 :goto_0

    .line 54
    .line 55
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 56
    .line 57
    invoke-static {v0, v6}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->access$300(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;I)V

    .line 58
    .line 59
    .line 60
    goto/16 :goto_0

    .line 61
    .line 62
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 63
    .line 64
    invoke-static {v0, v6}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->access$400(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;I)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 68
    .line 69
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$fgetmIsScreenOn(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_5

    .line 74
    .line 75
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 76
    .line 77
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$fgetmRssi(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    const/16 v2, -0x3c

    .line 82
    .line 83
    if-lt v0, v2, :cond_5

    .line 84
    .line 85
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 86
    .line 87
    invoke-virtual {v0, v6, v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessageDelayed(IJ)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 92
    .line 93
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$mdoActiveDetection(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-ltz v0, :cond_2

    .line 98
    .line 99
    iput v5, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;->cmdRetryCnt:I

    .line 100
    .line 101
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;->activeDetectionTrial:I

    .line 102
    .line 103
    sub-int/2addr v0, v1

    .line 104
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;->activeDetectionTrial:I

    .line 105
    .line 106
    if-lez v0, :cond_1

    .line 107
    .line 108
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 109
    .line 110
    invoke-virtual {v0, v6, v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessageDelayed(IJ)V

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 115
    .line 116
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$fgetmPassiveDetectionState(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {v0, v2}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_2
    iget v2, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;->cmdRetryCnt:I

    .line 125
    .line 126
    const/16 v3, 0xa

    .line 127
    .line 128
    if-ge v2, v3, :cond_3

    .line 129
    .line 130
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 131
    .line 132
    new-instance v3, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    const-string v4, "Retry due to "

    .line 135
    .line 136
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 140
    .line 141
    invoke-static {v4, v0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$merrorToString(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;I)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-static {v2, v0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$mlogControlHistory(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;->cmdRetryCnt:I

    .line 156
    .line 157
    add-int/2addr v0, v1

    .line 158
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;->cmdRetryCnt:I

    .line 159
    .line 160
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 161
    .line 162
    const-wide/16 v2, 0x3e8

    .line 163
    .line 164
    invoke-virtual {v0, v6, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessageDelayed(IJ)V

    .line 165
    .line 166
    .line 167
    goto :goto_0

    .line 168
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 169
    .line 170
    const-string v2, "Stop ActiveDetection due to burst cmd failure"

    .line 171
    .line 172
    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$mlogControlHistory(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 176
    .line 177
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$fgetmDisconnectedState(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DisconnectedState;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    invoke-virtual {v0, v2}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 182
    .line 183
    .line 184
    goto :goto_0

    .line 185
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 186
    .line 187
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$fgetmNotDeterminedState(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$NotDeterminedState;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    invoke-virtual {v0, v2}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 192
    .line 193
    .line 194
    :cond_5
    :goto_0
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$sfgetDBG()Z

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    if-eqz v0, :cond_6

    .line 199
    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    .line 201
    .line 202
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p0}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    const-string v2, ": "

    .line 213
    .line 214
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 218
    .line 219
    iget p1, p1, Landroid/os/Message;->what:I

    .line 220
    .line 221
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$meventToString(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;I)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object p0

    .line 225
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object p0

    .line 232
    const-string p1, "SemWifiLeakyApDetector"

    .line 233
    .line 234
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    .line 236
    .line 237
    :cond_6
    return v1

    .line 238
    nop

    .line 239
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
