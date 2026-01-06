.class Lcom/samsung/android/server/wifi/SemL4sController$NetworkCallbacks;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemL4sController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkCallbacks"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemL4sController;


# direct methods
.method private constructor <init>(Lcom/samsung/android/server/wifi/SemL4sController;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemL4sController$NetworkCallbacks;->this$0:Lcom/samsung/android/server/wifi/SemL4sController;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/SemL4sController;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemL4sController$NetworkCallbacks;-><init>(Lcom/samsung/android/server/wifi/SemL4sController;)V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemL4sController$NetworkCallbacks;->this$0:Lcom/samsung/android/server/wifi/SemL4sController;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemL4sController;->-$$Nest$fgetmL4sHandler(Lcom/samsung/android/server/wifi/SemL4sController;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x3

    .line 8
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemL4sController$NetworkCallbacks;->this$0:Lcom/samsung/android/server/wifi/SemL4sController;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemL4sController;->-$$Nest$fgetmL4sHandler(Lcom/samsung/android/server/wifi/SemL4sController;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x4

    .line 8
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 13
    .line 14
    .line 15
    return-void
.end method
