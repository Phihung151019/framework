.class Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector$LinkInfoCollectorHandler;
.super Landroid/os/Handler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LinkInfoCollectorHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector$LinkInfoCollectorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;

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
    .locals 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector$LinkInfoCollectorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mOperationHistory:Ljava/util/HashMap;

    .line 13
    .line 14
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 15
    .line 16
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 33
    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 35
    .line 36
    .line 37
    move-result-wide v2

    .line 38
    if-ne p1, v1, :cond_2

    .line 39
    .line 40
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector$LinkInfoCollectorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;

    .line 41
    .line 42
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->-$$Nest$fgetmConnected(Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 47
    .line 48
    .line 49
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector$LinkInfoCollectorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;

    .line 50
    .line 51
    invoke-static {p0, v2, v3}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->-$$Nest$fputmConnectionTime(Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;J)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector$LinkInfoCollectorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;

    .line 56
    .line 57
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->-$$Nest$fgetmConnected(Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const/4 v0, 0x0

    .line 62
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 63
    .line 64
    .line 65
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector$LinkInfoCollectorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;

    .line 66
    .line 67
    invoke-static {p0, v2, v3}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->-$$Nest$fputmDisconnectionTime(Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;J)V

    .line 68
    .line 69
    .line 70
    return-void
.end method
