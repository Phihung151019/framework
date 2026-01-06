.class Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$2;
.super Ljava/util/TimerTask;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->runRecoveryEnableTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$2;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    const-string v0, "SemWifiEleStateTracker"

    .line 2
    .line 3
    const-string v1, "mBlockRoamTimer timer expired - enable Roam network valid transition"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$2;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->-$$Nest$fputmBlockRoamTimer(Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$2;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    .line 14
    .line 15
    invoke-static {v1}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->-$$Nest$fgetmEleMoving(Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$2;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    .line 22
    .line 23
    invoke-static {v1}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->-$$Nest$fgetmSemWifiEleStateTrackerCallBack(Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;)Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$ISemWifiEleStateTrackerCallBack;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-interface {v1}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$ISemWifiEleStateTrackerCallBack;->eleEnableRecovery()V

    .line 28
    .line 29
    .line 30
    const-string v1, "eleEnableRecovery delivered "

    .line 31
    .line 32
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$2;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->clearEleMoving()V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method
