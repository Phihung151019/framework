.class Lcom/samsung/android/server/wifi/SemClientModeImpl$DisconnectedState;
.super Lcom/android/internal/util/State;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemClientModeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DisconnectedState"
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DisconnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

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
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DisconnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, " Enter DisconnectedState screenOn="

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DisconnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

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
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DisconnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->isNCHOModeEnabled()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const/4 v1, 0x0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DisconnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 36
    .line 37
    const/16 v2, -0x4b

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->setRoamTrigger(I)Z

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DisconnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->setNCHOModeEnabled(Z)Z

    .line 45
    .line 46
    .line 47
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DisconnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 48
    .line 49
    invoke-static {p0, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fputmIsImsCallEstablished(Lcom/samsung/android/server/wifi/SemClientModeImpl;Z)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public exit()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DisconnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 2
    .line 3
    const-string v0, "Leaving Disconnected state"

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->logd(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
