.class Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidSwitchableState;
.super Lcom/android/internal/util/State;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ValidSwitchableState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidSwitchableState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

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
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " enter"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "WifiConnectivityMonitor"

    .line 23
    .line 24
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidSwitchableState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputbSetQcResult(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidSwitchableState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 33
    .line 34
    const v1, 0x21084

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidSwitchableState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 41
    .line 42
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmRssiThresholdNetSelector(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidSwitchableState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 49
    .line 50
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmRssiThresholdNetSelector(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    const/4 v0, 0x1

    .line 55
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->notifyAllowHolding(Z)V

    .line 56
    .line 57
    .line 58
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidSwitchableState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->setLogOnlyTransitions(Z)V

    .line 5
    .line 6
    .line 7
    iget v0, p1, Landroid/os/Message;->what:I

    .line 8
    .line 9
    const-string v2, "WifiConnectivityMonitor"

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    sparse-switch v0, :sswitch_data_0

    .line 13
    .line 14
    .line 15
    return v1

    .line 16
    :sswitch_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidSwitchableState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCheckRoamedNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidSwitchableState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 25
    .line 26
    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmCheckRoamedNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidSwitchableState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmInvalidationFailHistory(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/QcFailHistory;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const/16 v0, 0x11

    .line 36
    .line 37
    iput v0, p1, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->error:I

    .line 38
    .line 39
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidSwitchableState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 40
    .line 41
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmInvalidationFailHistory(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/QcFailHistory;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const/4 v1, 0x2

    .line 54
    aget-object v0, v0, v1

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    iput v0, p1, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->line:I

    .line 61
    .line 62
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidSwitchableState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 63
    .line 64
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmInvalidationFailHistory(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/QcFailHistory;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msetQcFailHistory(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Lcom/samsung/android/server/wifi/wcm/QcFailHistory;)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidSwitchableState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 72
    .line 73
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputbSetQcResult(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidSwitchableState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 77
    .line 78
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmInvalidState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {p1, v0}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 83
    .line 84
    .line 85
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidSwitchableState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 86
    .line 87
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmCheckValidationBlock(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 88
    .line 89
    .line 90
    return v3

    .line 91
    :sswitch_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidSwitchableState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 92
    .line 93
    invoke-virtual {p1, v3}, Lcom/android/internal/util/StateMachine;->setLogOnlyTransitions(Z)V

    .line 94
    .line 95
    .line 96
    const-string p1, "VALIDATED_DETECTED"

    .line 97
    .line 98
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidSwitchableState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 102
    .line 103
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCheckRoamedNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-eqz p1, :cond_2

    .line 108
    .line 109
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidSwitchableState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 110
    .line 111
    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmCheckRoamedNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 112
    .line 113
    .line 114
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidSwitchableState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 115
    .line 116
    invoke-virtual {p1}, Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidSwitchableState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 121
    .line 122
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmLevel2State(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    if-ne p1, v0, :cond_2

    .line 127
    .line 128
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidSwitchableState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 129
    .line 130
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmLevel1State(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 135
    .line 136
    .line 137
    return v3

    .line 138
    :sswitch_2
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfgetmLinkDetectMode()I

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    if-ne p1, v3, :cond_1

    .line 143
    .line 144
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidSwitchableState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 145
    .line 146
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmTrafficPollToken(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    add-int/2addr v0, v3

    .line 151
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmTrafficPollToken(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 152
    .line 153
    .line 154
    const v2, 0x21019

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {p1, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 162
    .line 163
    .line 164
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidSwitchableState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 165
    .line 166
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmLevel1State(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 171
    .line 172
    .line 173
    return v3

    .line 174
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidSwitchableState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 175
    .line 176
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mcheckTransitionToLevel2State(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 177
    .line 178
    .line 179
    return v3

    .line 180
    :sswitch_3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidSwitchableState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 181
    .line 182
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mdoNotStartNSA(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    if-eqz v0, :cond_3

    .line 187
    .line 188
    :cond_2
    return v3

    .line 189
    :cond_3
    const-string v0, "[ValidSwitchable] REPORT_NETWORK_CONNECTIVITY"

    .line 190
    .line 191
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    .line 193
    .line 194
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidSwitchableState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 195
    .line 196
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 197
    .line 198
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 199
    .line 200
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->reportNetworkConnectivityToNM(II)Z

    .line 201
    .line 202
    .line 203
    return v3

    .line 204
    nop

    .line 205
    :sswitch_data_0
    .sparse-switch
        0x21024 -> :sswitch_3
        0x21084 -> :sswitch_2
        0x21133 -> :sswitch_1
        0x21134 -> :sswitch_0
    .end sparse-switch
.end method
