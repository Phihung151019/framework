.class Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;
.super Lcom/android/internal/util/State;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;


# direct methods
.method public static synthetic $r8$lambda$Sp_op5-88sQk8B6HUkWrYwcjm1U(Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;->lambda$processMessage$0(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;-><init>(Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;)V

    return-void
.end method

.method private checkAndTransitionToStartState()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->-$$Nest$fgetmIdleState(Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;)Lcom/android/internal/util/State;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isWifiEnabled()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    const-string v0, "SemClientModeManager"

    .line 30
    .line 31
    const-string v1, "recovery current state"

    .line 32
    .line 33
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 37
    .line 38
    const v1, 0x24067

    .line 39
    .line 40
    .line 41
    const/4 v2, 0x1

    .line 42
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(II)V

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 46
    .line 47
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->-$$Nest$mdetermineInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;)I

    .line 48
    .line 49
    .line 50
    :cond_0
    return-void
.end method

.method private synthetic lambda$processMessage$0(ILjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 4
    .line 5
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmPrimaryInterface(Lcom/samsung/android/server/wifi/SemClientModeManager;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-static {p2, p1}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->getReportDataForScanFail(Ljava/lang/String;I)Landroid/os/Bundle;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/16 p2, 0x191

    .line 14
    .line 15
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->report(ILandroid/os/Bundle;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 5

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/16 v1, 0x11

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v0, :cond_c

    .line 7
    .line 8
    const/4 v3, 0x6

    .line 9
    if-eq v0, v2, :cond_b

    .line 10
    .line 11
    const/4 v4, 0x2

    .line 12
    if-eq v0, v4, :cond_a

    .line 13
    .line 14
    const/4 v4, 0x3

    .line 15
    if-eq v0, v4, :cond_9

    .line 16
    .line 17
    const/4 v4, 0x4

    .line 18
    if-eq v0, v4, :cond_7

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    if-eq v0, v3, :cond_6

    .line 22
    .line 23
    const/4 v3, 0x7

    .line 24
    if-eq v0, v3, :cond_4

    .line 25
    .line 26
    const/16 p1, 0x9

    .line 27
    .line 28
    if-eq v0, p1, :cond_3

    .line 29
    .line 30
    const/16 p1, 0xf

    .line 31
    .line 32
    if-eq v0, p1, :cond_2

    .line 33
    .line 34
    if-eq v0, v1, :cond_1

    .line 35
    .line 36
    const p1, 0x24067

    .line 37
    .line 38
    .line 39
    if-eq v0, p1, :cond_0

    .line 40
    .line 41
    packed-switch v0, :pswitch_data_0

    .line 42
    .line 43
    .line 44
    goto/16 :goto_0

    .line 45
    .line 46
    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 47
    .line 48
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->-$$Nest$mdetermineInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;)I

    .line 49
    .line 50
    .line 51
    return v2

    .line 52
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 53
    .line 54
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->-$$Nest$fgetmStartedState(Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;)Lcom/android/internal/util/State;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 59
    .line 60
    .line 61
    return v2

    .line 62
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 63
    .line 64
    iget-object p1, p1, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 65
    .line 66
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmScanPool(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 71
    .line 72
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 73
    .line 74
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmInjector(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiScanner()Landroid/net/wifi/WifiScanner;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 83
    .line 84
    invoke-virtual {v1}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/server/wifi/util/ScanPool;->startMonitoring(Landroid/net/wifi/WifiScanner;Landroid/os/Handler;)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 92
    .line 93
    iget-object p1, p1, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 94
    .line 95
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmScanPool(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    new-instance v0, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticLambda9;

    .line 100
    .line 101
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticLambda9;-><init>(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/util/ScanPool;->setScanFailedListener(Lcom/samsung/android/server/wifi/util/ScanPool$ScanFailedListener;)V

    .line 105
    .line 106
    .line 107
    return v2

    .line 108
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 109
    .line 110
    iget-object p1, p1, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 111
    .line 112
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmLazyBootCompleteListener(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/SemClientModeManager$LazyBootCompleteListener;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    if-eqz p1, :cond_8

    .line 117
    .line 118
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 119
    .line 120
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 121
    .line 122
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmLazyBootCompleteListener(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/SemClientModeManager$LazyBootCompleteListener;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager$LazyBootCompleteListener;->onLazyBootCompleted()V

    .line 127
    .line 128
    .line 129
    return v2

    .line 130
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 131
    .line 132
    iget-object p1, p1, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 133
    .line 134
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmScanningEnable(Lcom/samsung/android/server/wifi/SemClientModeManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    if-nez p1, :cond_8

    .line 143
    .line 144
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 145
    .line 146
    iget-object p1, p1, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 147
    .line 148
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmInjector(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiScanner()Landroid/net/wifi/WifiScanner;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-virtual {p1, v4}, Landroid/net/wifi/WifiScanner;->setScanningEnabled(Z)V

    .line 157
    .line 158
    .line 159
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 160
    .line 161
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 162
    .line 163
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    invoke-virtual {p0, v4}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->allowAutojoinGlobal(Z)V

    .line 168
    .line 169
    .line 170
    return v2

    .line 171
    :cond_4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 172
    .line 173
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 174
    .line 175
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 176
    .line 177
    if-ne p1, v2, :cond_5

    .line 178
    .line 179
    move v4, v2

    .line 180
    :cond_5
    invoke-static {p0, v4}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$mnotifySimStateChanged(Lcom/samsung/android/server/wifi/SemClientModeManager;Z)V

    .line 181
    .line 182
    .line 183
    return v2

    .line 184
    :cond_6
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 185
    .line 186
    iget-object p1, p1, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 187
    .line 188
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmSaLoggingManager(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->sendSettingsStatus()Ljava/util/Map;

    .line 193
    .line 194
    .line 195
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 196
    .line 197
    iget-object p1, p1, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 198
    .line 199
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmSettingsStatusProvider(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/SemClientModeManager$WifiSaStatusProvider;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemClientModeManager$WifiSaStatusProvider;->resetCounter()V

    .line 204
    .line 205
    .line 206
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 207
    .line 208
    iget-object p1, p1, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 209
    .line 210
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$mgetW24HBigDataParameters(Lcom/samsung/android/server/wifi/SemClientModeManager;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 215
    .line 216
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 217
    .line 218
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmBigDataManager(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    const-string v1, "W24H"

    .line 223
    .line 224
    invoke-static {v1, p1}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->getBigDataBundle(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->insertLog(Landroid/os/Bundle;)V

    .line 229
    .line 230
    .line 231
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 232
    .line 233
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 234
    .line 235
    const/16 v1, 0xcb

    .line 236
    .line 237
    invoke-static {p1}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->getReportDataForW24H(Ljava/lang/String;)Landroid/os/Bundle;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->report(ILandroid/os/Bundle;)V

    .line 242
    .line 243
    .line 244
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 245
    .line 246
    invoke-static {p1, v3}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->access$000(Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;I)V

    .line 247
    .line 248
    .line 249
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 250
    .line 251
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 252
    .line 253
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmBigDataManager(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    invoke-virtual {p1, v4}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->getW24HLoggingDelayTime(Z)J

    .line 258
    .line 259
    .line 260
    move-result-wide v0

    .line 261
    invoke-virtual {p0, v3, v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessageDelayed(IJ)V

    .line 262
    .line 263
    .line 264
    return v2

    .line 265
    :cond_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 266
    .line 267
    check-cast p1, Landroid/net/NetworkInfo;

    .line 268
    .line 269
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    .line 270
    .line 271
    .line 272
    move-result p1

    .line 273
    if-eqz p1, :cond_8

    .line 274
    .line 275
    const-string p1, "SemClientModeManager"

    .line 276
    .line 277
    const-string v0, "interface was running, current state is wrong"

    .line 278
    .line 279
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    .line 281
    .line 282
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;->checkAndTransitionToStartState()V

    .line 283
    .line 284
    .line 285
    :cond_8
    :goto_0
    return v2

    .line 286
    :cond_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 287
    .line 288
    check-cast p1, Ljava/lang/String;

    .line 289
    .line 290
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 291
    .line 292
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 293
    .line 294
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$mremoveClientModeImpl(Lcom/samsung/android/server/wifi/SemClientModeManager;Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    return v2

    .line 298
    :cond_a
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 299
    .line 300
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 301
    .line 302
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 303
    .line 304
    check-cast p1, Ljava/lang/String;

    .line 305
    .line 306
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$maddClientModeImpl(Lcom/samsung/android/server/wifi/SemClientModeManager;Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    return v2

    .line 310
    :cond_b
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 311
    .line 312
    iget-object p1, p1, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 313
    .line 314
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$mgetWifiStatus(Lcom/samsung/android/server/wifi/SemClientModeManager;)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    invoke-static {v0}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->getReportDataForBootCompleted(Ljava/lang/String;)Landroid/os/Bundle;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    const/16 v1, 0x320

    .line 323
    .line 324
    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->report(ILandroid/os/Bundle;)V

    .line 325
    .line 326
    .line 327
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 328
    .line 329
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 330
    .line 331
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmBigDataManager(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    .line 332
    .line 333
    .line 334
    move-result-object p1

    .line 335
    invoke-static {}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$sfgetDBG_PRODUCT_DEV()Z

    .line 336
    .line 337
    .line 338
    move-result v0

    .line 339
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->getW24HLoggingDelayTime(Z)J

    .line 340
    .line 341
    .line 342
    move-result-wide v0

    .line 343
    invoke-virtual {p0, v3, v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessageDelayed(IJ)V

    .line 344
    .line 345
    .line 346
    return v2

    .line 347
    :cond_c
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 348
    .line 349
    iget-object p1, p1, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 350
    .line 351
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmWifiNative(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 352
    .line 353
    .line 354
    move-result-object p1

    .line 355
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->initialize()Z

    .line 356
    .line 357
    .line 358
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 359
    .line 360
    iget-object p1, p1, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 361
    .line 362
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmWifiDriverInfo(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    .line 363
    .line 364
    .line 365
    move-result-object p1

    .line 366
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->checkAndUpdate()V

    .line 367
    .line 368
    .line 369
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 370
    .line 371
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->-$$Nest$minitializeSoftApChipInfo(Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;)V

    .line 372
    .line 373
    .line 374
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;->checkAndTransitionToStartState()V

    .line 375
    .line 376
    .line 377
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 378
    .line 379
    const-wide/16 v3, 0x1f4

    .line 380
    .line 381
    invoke-virtual {p0, v1, v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessageDelayed(IJ)V

    .line 382
    .line 383
    .line 384
    return v2

    .line 385
    :pswitch_data_0
    .packed-switch 0x24064
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
