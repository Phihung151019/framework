.class Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DisabledState;
.super Lcom/android/internal/util/State;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DisabledState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DisabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

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
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DisabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mstopPnoScan(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public exit()V
    .locals 0

    .line 1
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DisabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DisabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 10
    .line 11
    invoke-static {v0, p1, p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlogStateAndMessage(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Landroid/os/Message;Lcom/android/internal/util/State;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    .line 15
    .line 16
    const/4 v1, 0x5

    .line 17
    const/4 v2, 0x3

    .line 18
    const/4 v3, 0x1

    .line 19
    if-eq v0, v2, :cond_5

    .line 20
    .line 21
    const/4 v4, 0x4

    .line 22
    const/4 v5, 0x0

    .line 23
    if-eq v0, v4, :cond_4

    .line 24
    .line 25
    if-eq v0, v1, :cond_3

    .line 26
    .line 27
    const/4 v1, 0x6

    .line 28
    if-eq v0, v1, :cond_2

    .line 29
    .line 30
    const/4 p1, 0x7

    .line 31
    if-eq v0, p1, :cond_1

    .line 32
    .line 33
    const/16 p0, 0xe

    .line 34
    .line 35
    if-eq v0, p0, :cond_6

    .line 36
    .line 37
    return v5

    .line 38
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DisabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmScreenOn(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_6

    .line 45
    .line 46
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DisabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 47
    .line 48
    invoke-virtual {p1, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 49
    .line 50
    .line 51
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DisabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 52
    .line 53
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmDefaultState(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/android/internal/util/State;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 58
    .line 59
    .line 60
    return v3

    .line 61
    :cond_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 62
    .line 63
    if-ne p1, v3, :cond_6

    .line 64
    .line 65
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DisabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 66
    .line 67
    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mavoidStartingSilentRoaming(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-nez p1, :cond_6

    .line 72
    .line 73
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DisabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 74
    .line 75
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmEnabledState(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/android/internal/util/State;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 80
    .line 81
    .line 82
    return v3

    .line 83
    :cond_3
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 84
    .line 85
    if-nez p1, :cond_6

    .line 86
    .line 87
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DisabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 88
    .line 89
    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmIfaceName(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DisabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 93
    .line 94
    invoke-virtual {p1, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 95
    .line 96
    .line 97
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DisabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 98
    .line 99
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmDefaultState(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/android/internal/util/State;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 104
    .line 105
    .line 106
    return v3

    .line 107
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DisabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 108
    .line 109
    invoke-static {p1, v5}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmConnectingWatchdogCount(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V

    .line 110
    .line 111
    .line 112
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DisabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 113
    .line 114
    invoke-static {p1, v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->access$900(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V

    .line 115
    .line 116
    .line 117
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DisabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 118
    .line 119
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mstartSilentRoaming(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V

    .line 120
    .line 121
    .line 122
    return v3

    .line 123
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DisabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 124
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    const-string v2, "DisabledState: Connecting watchdog! , ConnectingWatchdogCount= "

    .line 128
    .line 129
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    iget-object v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DisabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 133
    .line 134
    invoke-static {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmConnectingWatchdogCount(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)I

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DisabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 149
    .line 150
    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mstartSilentRoaming(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V

    .line 151
    .line 152
    .line 153
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DisabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 154
    .line 155
    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmConnectingWatchdogCount(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)I

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    if-le p1, v1, :cond_6

    .line 160
    .line 161
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DisabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 162
    .line 163
    invoke-virtual {p1, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 164
    .line 165
    .line 166
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DisabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 167
    .line 168
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmDefaultState(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/android/internal/util/State;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 173
    .line 174
    .line 175
    :cond_6
    return v3
.end method
