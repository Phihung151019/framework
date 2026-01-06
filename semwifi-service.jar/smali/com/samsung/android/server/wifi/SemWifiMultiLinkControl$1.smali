.class Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$1;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$GrantCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public grant(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmMediatorGranted(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 11
    .line 12
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmMloConnected(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 23
    .line 24
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmMultiLinkControlHandler(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 29
    .line 30
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmMultiLinkControlHandler(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const/4 v0, 0x1

    .line 35
    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const-wide/16 v0, 0x0

    .line 40
    .line 41
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method
