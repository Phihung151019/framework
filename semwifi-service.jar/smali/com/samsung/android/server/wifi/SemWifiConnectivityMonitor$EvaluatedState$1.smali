.class Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState$1;
.super Landroid/os/Handler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState$1;->this$1:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/16 v1, 0x270f

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 8
    .line 9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p1, Ljava/lang/String;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState$1;->this$1:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 16
    .line 17
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmRssiThresholdNetSelector(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState$1;->this$1:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 26
    .line 27
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmRssiThresholdNetSelector(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->notifyLinkLost(Ljava/lang/String;I)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method
