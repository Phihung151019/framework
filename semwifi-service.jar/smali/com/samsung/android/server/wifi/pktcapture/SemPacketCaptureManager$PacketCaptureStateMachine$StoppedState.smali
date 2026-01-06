.class Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine$StoppedState;
.super Lcom/android/internal/util/State;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StoppedState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;


# direct methods
.method private constructor <init>(Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine$StoppedState;->this$1:Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine$StoppedState;-><init>(Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine$StoppedState;->this$1:Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;

    .line 2
    .line 3
    const-string v0, "Entering StoppedState"

    .line 4
    .line 5
    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;->access$500(Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public exit()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine$StoppedState;->this$1:Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;

    .line 2
    .line 3
    const-string v0, "Exiting StoppedState"

    .line 4
    .line 5
    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;->access$600(Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 2

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    const-string p1, "PacketCaptureManager"

    .line 8
    .line 9
    const-string v1, "Processing the CMD_STOP_CAPTURE in Stopped StateMachine"

    .line 10
    .line 11
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine$StoppedState;->this$1:Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;->this$0:Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->stopTcpDump()Z

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine$StoppedState;->this$1:Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;->this$0:Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;

    .line 24
    .line 25
    invoke-static {p1}, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->-$$Nest$fgetcurrentFileName(Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    iget-object p1, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine$StoppedState;->this$1:Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;

    .line 32
    .line 33
    iget-object p1, p1, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;->this$0:Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->-$$Nest$fgetairLogFileNames(Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;)Ljava/util/Set;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iget-object v1, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine$StoppedState;->this$1:Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;

    .line 40
    .line 41
    iget-object v1, v1, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;->this$0:Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;

    .line 42
    .line 43
    invoke-static {v1}, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->-$$Nest$fgetcurrentFileName(Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine$StoppedState;->this$1:Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;

    .line 51
    .line 52
    iget-object p1, p1, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;->this$0:Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;

    .line 53
    .line 54
    invoke-static {p1}, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->-$$Nest$mcopyToInternalStorage(Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;)V

    .line 55
    .line 56
    .line 57
    iget-object p0, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine$StoppedState;->this$1:Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;

    .line 58
    .line 59
    invoke-static {p0}, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;->-$$Nest$fgetmDefaultState(Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;)Lcom/android/internal/util/State;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 64
    .line 65
    .line 66
    return v0
.end method
