.class Lcom/samsung/android/server/wifi/SemSwitchBoardService$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemSwitchBoardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$1;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$1;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$1;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 8
    .line 9
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const/4 v1, 0x6

    .line 14
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$1;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$1;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 8
    .line 9
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const/4 v1, 0x7

    .line 14
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method
