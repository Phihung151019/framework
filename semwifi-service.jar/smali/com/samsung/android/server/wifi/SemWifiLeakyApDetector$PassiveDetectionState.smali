.class Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;
.super Lcom/android/internal/util/State;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PassiveDetectionState"
.end annotation


# instance fields
.field private cmdRetryCnt:I

.field private detectionTime:J

.field private earlyTerminationRequired:Z

.field private elapsedTime:J

.field private endTime:J

.field private isDetectionRunning:Z

.field private startTime:J

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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

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
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

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
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->cmdRetryCnt:I

    .line 29
    .line 30
    const-wide/16 v1, 0x0

    .line 31
    .line 32
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->startTime:J

    .line 33
    .line 34
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->endTime:J

    .line 35
    .line 36
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->elapsedTime:J

    .line 37
    .line 38
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->detectionTime:J

    .line 39
    .line 40
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->earlyTerminationRequired:Z

    .line 41
    .line 42
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->isDetectionRunning:Z

    .line 43
    .line 44
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 45
    .line 46
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$fgetmIsScreenOn(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_0

    .line 51
    .line 52
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 53
    .line 54
    const/16 v0, 0xe

    .line 55
    .line 56
    const-wide/16 v1, 0x3e8

    .line 57
    .line 58
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessageDelayed(IJ)V

    .line 59
    .line 60
    .line 61
    :cond_0
    return-void
.end method

.method public exit()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

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
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 28
    .line 29
    const/16 v1, 0xe

    .line 30
    .line 31
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->access$600(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;I)V

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 35
    .line 36
    const/16 v0, 0xf

    .line 37
    .line 38
    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->access$700(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;I)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 12

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq v0, v1, :cond_a

    .line 6
    .line 7
    const-string v3, "Stop PassiveDetection due to burst cmd failure"

    .line 8
    .line 9
    const-wide/16 v4, 0x3e8

    .line 10
    .line 11
    const/16 v6, 0xa

    .line 12
    .line 13
    const/4 v7, 0x0

    .line 14
    const/16 v8, 0xe

    .line 15
    .line 16
    const/16 v9, 0xf

    .line 17
    .line 18
    const-wide/32 v10, 0x927c0

    .line 19
    .line 20
    .line 21
    if-eq v0, v8, :cond_6

    .line 22
    .line 23
    if-eq v0, v9, :cond_1

    .line 24
    .line 25
    packed-switch v0, :pswitch_data_0

    .line 26
    .line 27
    .line 28
    return v7

    .line 29
    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 30
    .line 31
    .line 32
    move-result-wide v3

    .line 33
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 34
    .line 35
    invoke-static {v0, v1, v3, v4}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$mupdateDetectionResult(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;IJ)V

    .line 36
    .line 37
    .line 38
    iget-wide v5, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->detectionTime:J

    .line 39
    .line 40
    sub-long v5, v3, v5

    .line 41
    .line 42
    const-wide/16 v7, 0x2710

    .line 43
    .line 44
    cmp-long v0, v5, v7

    .line 45
    .line 46
    if-gtz v0, :cond_0

    .line 47
    .line 48
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 49
    .line 50
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$mupdateLeakyApDeterminationType(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;I)V

    .line 51
    .line 52
    .line 53
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->earlyTerminationRequired:Z

    .line 54
    .line 55
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 56
    .line 57
    invoke-virtual {v0, v9}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 58
    .line 59
    .line 60
    :cond_0
    iput-wide v3, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->detectionTime:J

    .line 61
    .line 62
    goto/16 :goto_0

    .line 63
    .line 64
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 65
    .line 66
    invoke-static {v0, v8}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->access$800(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;I)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 70
    .line 71
    invoke-static {v0, v9}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->access$900(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;I)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 75
    .line 76
    invoke-virtual {v0, v9}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 77
    .line 78
    .line 79
    goto/16 :goto_0

    .line 80
    .line 81
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 82
    .line 83
    invoke-static {v0, v9}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->access$1000(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;I)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 87
    .line 88
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$fgetmIsScreenOn(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_b

    .line 93
    .line 94
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 95
    .line 96
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$fgetmRssi(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    const/16 v1, -0x3c

    .line 101
    .line 102
    if-lt v0, v1, :cond_b

    .line 103
    .line 104
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 105
    .line 106
    invoke-virtual {v0, v8}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 107
    .line 108
    .line 109
    goto/16 :goto_0

    .line 110
    .line 111
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->isDetectionRunning:Z

    .line 112
    .line 113
    if-nez v0, :cond_2

    .line 114
    .line 115
    goto/16 :goto_0

    .line 116
    .line 117
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 118
    .line 119
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$mendPassiveDetection(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-ltz v0, :cond_4

    .line 124
    .line 125
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 126
    .line 127
    const-string v1, "PassiveDetection stopped"

    .line 128
    .line 129
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$mlogControlHistory(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    iput-boolean v7, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->isDetectionRunning:Z

    .line 133
    .line 134
    iput v7, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->cmdRetryCnt:I

    .line 135
    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 137
    .line 138
    .line 139
    move-result-wide v0

    .line 140
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->endTime:J

    .line 141
    .line 142
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->elapsedTime:J

    .line 143
    .line 144
    iget-wide v5, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->startTime:J

    .line 145
    .line 146
    sub-long/2addr v0, v5

    .line 147
    add-long/2addr v0, v3

    .line 148
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->elapsedTime:J

    .line 149
    .line 150
    cmp-long v0, v0, v10

    .line 151
    .line 152
    if-gez v0, :cond_3

    .line 153
    .line 154
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->earlyTerminationRequired:Z

    .line 155
    .line 156
    if-eqz v0, :cond_b

    .line 157
    .line 158
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 159
    .line 160
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$fgetmDeterminedState(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DeterminedState;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 165
    .line 166
    .line 167
    goto/16 :goto_0

    .line 168
    .line 169
    :cond_4
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->cmdRetryCnt:I

    .line 170
    .line 171
    if-ge v0, v6, :cond_5

    .line 172
    .line 173
    add-int/2addr v0, v2

    .line 174
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->cmdRetryCnt:I

    .line 175
    .line 176
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 177
    .line 178
    invoke-virtual {v0, v9, v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessageDelayed(IJ)V

    .line 179
    .line 180
    .line 181
    goto/16 :goto_0

    .line 182
    .line 183
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 184
    .line 185
    invoke-static {v0, v3}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$mlogControlHistory(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 189
    .line 190
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$fgetmDisconnectedState(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DisconnectedState;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 195
    .line 196
    .line 197
    goto :goto_0

    .line 198
    :cond_6
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->isDetectionRunning:Z

    .line 199
    .line 200
    if-eqz v0, :cond_7

    .line 201
    .line 202
    goto :goto_0

    .line 203
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 204
    .line 205
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$mstartPassiveDetection(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)I

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    if-ltz v0, :cond_8

    .line 210
    .line 211
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 212
    .line 213
    const-string v1, "PassiveDetection Started"

    .line 214
    .line 215
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$mlogControlHistory(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->isDetectionRunning:Z

    .line 219
    .line 220
    iput v7, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->cmdRetryCnt:I

    .line 221
    .line 222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 223
    .line 224
    .line 225
    move-result-wide v0

    .line 226
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->startTime:J

    .line 227
    .line 228
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 229
    .line 230
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->elapsedTime:J

    .line 231
    .line 232
    sub-long/2addr v10, v3

    .line 233
    invoke-virtual {v0, v9, v10, v11}, Lcom/android/internal/util/StateMachine;->sendMessageDelayed(IJ)V

    .line 234
    .line 235
    .line 236
    goto :goto_0

    .line 237
    :cond_8
    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->cmdRetryCnt:I

    .line 238
    .line 239
    if-ge v1, v6, :cond_9

    .line 240
    .line 241
    add-int/2addr v1, v2

    .line 242
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->cmdRetryCnt:I

    .line 243
    .line 244
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 245
    .line 246
    new-instance v3, Ljava/lang/StringBuilder;

    .line 247
    .line 248
    const-string v6, "Retry due to "

    .line 249
    .line 250
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 254
    .line 255
    invoke-static {v6, v0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$merrorToString(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;I)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    invoke-static {v1, v0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$mlogControlHistory(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 270
    .line 271
    invoke-virtual {v0, v8, v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessageDelayed(IJ)V

    .line 272
    .line 273
    .line 274
    goto :goto_0

    .line 275
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 276
    .line 277
    invoke-static {v0, v3}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$mlogControlHistory(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 281
    .line 282
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$fgetmDisconnectedState(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DisconnectedState;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 287
    .line 288
    .line 289
    goto :goto_0

    .line 290
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 291
    .line 292
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$fgetmNotDeterminedState(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$NotDeterminedState;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 297
    .line 298
    .line 299
    :cond_b
    :goto_0
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$sfgetDBG()Z

    .line 300
    .line 301
    .line 302
    move-result v0

    .line 303
    if-eqz v0, :cond_c

    .line 304
    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    .line 306
    .line 307
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 308
    .line 309
    .line 310
    invoke-virtual {p0}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    const-string v1, ": "

    .line 318
    .line 319
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 323
    .line 324
    iget p1, p1, Landroid/os/Message;->what:I

    .line 325
    .line 326
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$meventToString(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;I)Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object p0

    .line 330
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object p0

    .line 337
    const-string p1, "SemWifiLeakyApDetector"

    .line 338
    .line 339
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    .line 341
    .line 342
    :cond_c
    return v2

    .line 343
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
