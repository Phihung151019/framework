.class Lcom/samsung/android/server/wifi/SemClientModeImpl$DisconnectingState;
.super Lcom/android/internal/util/State;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemClientModeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DisconnectingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DisconnectingState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

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
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DisconnectingState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "entering DisconnectingState screenOn="

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DisconnectingState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 11
    .line 12
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmScreenOn(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->logd(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DisconnectingState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmDisconnectingWatchdogCount(Lcom/samsung/android/server/wifi/SemClientModeImpl;)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fputmDisconnectingWatchdogCount(Lcom/samsung/android/server/wifi/SemClientModeImpl;I)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DisconnectingState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 38
    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v2, "Start Disconnecting Watchdog "

    .line 42
    .line 43
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DisconnectingState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 47
    .line 48
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmDisconnectingWatchdogCount(Lcom/samsung/android/server/wifi/SemClientModeImpl;)I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->logd(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DisconnectingState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 63
    .line 64
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmDisconnectingWatchdogCount(Lcom/samsung/android/server/wifi/SemClientModeImpl;)I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    const/4 v1, 0x0

    .line 69
    const v2, 0x20060

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    const-wide/16 v1, 0x1388

    .line 77
    .line 78
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public exit()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DisconnectingState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 2
    .line 3
    const-string v0, "Leaving Disconnecting state"

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->logd(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const v1, 0x20049

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq v0, v1, :cond_3

    .line 8
    .line 9
    const v1, 0x20060

    .line 10
    .line 11
    .line 12
    if-eq v0, v1, :cond_1

    .line 13
    .line 14
    const v1, 0x24006

    .line 15
    .line 16
    .line 17
    if-eq v0, v1, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DisconnectingState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 22
    .line 23
    const/4 v1, -0x4

    .line 24
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fputmMessageHandlingStatus(Lcom/samsung/android/server/wifi/SemClientModeImpl;I)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DisconnectingState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DisconnectingState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mhandleNetworkDisconnect(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DisconnectingState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmDisconnectedState(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/android/internal/util/State;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DisconnectingState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 48
    .line 49
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmDisconnectingWatchdogCount(Lcom/samsung/android/server/wifi/SemClientModeImpl;)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 54
    .line 55
    if-ne v0, v1, :cond_4

    .line 56
    .line 57
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DisconnectingState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 58
    .line 59
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DisconnectingState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 66
    .line 67
    const-string v1, "disconnecting watchdog! -> disconnect"

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->log(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DisconnectingState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 73
    .line 74
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mhandleNetworkDisconnect(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DisconnectingState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 78
    .line 79
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmDisconnectedState(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/android/internal/util/State;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DisconnectingState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 88
    .line 89
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_4

    .line 94
    .line 95
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DisconnectingState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 96
    .line 97
    const-string v1, "Ignore CMD_DISCONNECT when already disconnecting."

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->log(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :cond_4
    :goto_0
    move v0, v2

    .line 103
    :goto_1
    if-ne v0, v2, :cond_5

    .line 104
    .line 105
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DisconnectingState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 106
    .line 107
    invoke-static {v1, p1, p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mlogStateAndMessage(Lcom/samsung/android/server/wifi/SemClientModeImpl;Landroid/os/Message;Lcom/android/internal/util/State;)V

    .line 108
    .line 109
    .line 110
    :cond_5
    return v0
.end method
