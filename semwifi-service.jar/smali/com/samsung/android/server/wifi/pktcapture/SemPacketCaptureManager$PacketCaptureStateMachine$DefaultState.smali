.class Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine$DefaultState;
.super Lcom/android/internal/util/State;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultState"
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine$DefaultState;->this$1:Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine$DefaultState;-><init>(Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine$DefaultState;->this$1:Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;

    .line 2
    .line 3
    const-string v1, "Entering DefaultState"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;->access$000(Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine$DefaultState;->this$1:Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;->this$0:Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->-$$Nest$fputcurrentFileName(Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public exit()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine$DefaultState;->this$1:Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;

    .line 2
    .line 3
    const-string v0, "Exiting DefaultState"

    .line 4
    .line 5
    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;->access$100(Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;Ljava/lang/String;)V

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
    if-eqz p1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine$DefaultState;->this$1:Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;

    .line 8
    .line 9
    const/4 v1, 0x3

    .line 10
    invoke-virtual {p1, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine$DefaultState;->this$1:Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;

    .line 14
    .line 15
    invoke-static {p0}, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;->-$$Nest$fgetmStartedState(Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;)Lcom/android/internal/util/State;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 20
    .line 21
    .line 22
    return v0
.end method
