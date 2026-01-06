.class Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority$3;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStaInfoStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority$3;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onWifiApStaInfoStateChanged(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->-$$Nest$sfgetmConnectedClientCount()Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 6
    .line 7
    .line 8
    if-gtz p3, :cond_0

    .line 9
    .line 10
    const-string p1, "SemWifiApTrafficPriority"

    .line 11
    .line 12
    const-string p2, "All clients disconnected"

    .line 13
    .line 14
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority$3;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->-$$Nest$fgetmSemWifiApThreadRunner(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;)Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    new-instance p2, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority$3$1;

    .line 24
    .line 25
    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority$3$1;-><init>(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority$3;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method
