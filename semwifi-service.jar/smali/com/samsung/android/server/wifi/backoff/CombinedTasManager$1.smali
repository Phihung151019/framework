.class Lcom/samsung/android/server/wifi/backoff/CombinedTasManager$1;
.super Landroid/os/Handler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;->registerTasEventCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager$1;->this$0:Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager$1;->this$0:Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;

    .line 2
    .line 3
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 4
    .line 5
    iput v1, v0, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;->currentTasLevel:I

    .line 6
    .line 7
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 8
    .line 9
    iput p1, v0, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;->lastWindowSize:I

    .line 10
    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v0, "combined tas level was changed, cur:"

    .line 14
    .line 15
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager$1;->this$0:Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;

    .line 19
    .line 20
    iget v0, v0, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;->currentTasLevel:I

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v0, " window:"

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager$1;->this$0:Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;

    .line 31
    .line 32
    iget v0, v0, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;->lastWindowSize:I

    .line 33
    .line 34
    const-string v1, "SemWifiBackOff.Tas"

    .line 35
    .line 36
    invoke-static {v1, v0, p1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 37
    .line 38
    .line 39
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager$1;->this$0:Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;->notifyForClients()V

    .line 42
    .line 43
    .line 44
    return-void
.end method
