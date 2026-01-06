.class Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$1;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public updatedTrafficStats(Lcom/samsung/android/server/wifi/SemWifiTrafficStats;)V
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 6
    .line 7
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmFirstStatUpdate(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 18
    .line 19
    invoke-static {v2, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fputmLastTimeNs(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;J)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmFirstStatUpdate(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetconnected(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 45
    .line 46
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmCtlFeatureMediatorHandler(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    const/4 v0, 0x1

    .line 51
    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 56
    .line 57
    .line 58
    :cond_1
    return-void
.end method
