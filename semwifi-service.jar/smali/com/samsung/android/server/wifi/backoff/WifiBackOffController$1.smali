.class Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$1;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/backoff/BackOffStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/backoff/SemSarManager;Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$1;->this$0:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onBackOffStarted(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$1;->this$0:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->-$$Nest$fgetmBackOffStats(Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/samsung/android/server/wifi/backoff/BackOffStats;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, p3}, Lcom/samsung/android/server/wifi/backoff/BackOffStats;->reportStartTrigger(I)V

    .line 16
    .line 17
    .line 18
    const-string v0, "onBackOffStarted iface="

    .line 19
    .line 20
    const-string v1, " type="

    .line 21
    .line 22
    invoke-static {p3, v0, p1, v1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string p3, "SemWifiBackOff.Controller"

    .line 27
    .line 28
    invoke-static {p3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-nez p1, :cond_1

    .line 36
    .line 37
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$1;->this$0:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    .line 38
    .line 39
    invoke-static {p0}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->-$$Nest$fgetmSarManager(Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;)Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    const/4 p1, 0x1

    .line 44
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->broadcastBackoffState(Ljava/lang/String;Z)V

    .line 45
    .line 46
    .line 47
    :cond_1
    return-void
.end method

.method public onBackOffStopped(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$1;->this$0:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->-$$Nest$fgetmBackOffStats(Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/samsung/android/server/wifi/backoff/BackOffStats;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, p3}, Lcom/samsung/android/server/wifi/backoff/BackOffStats;->reportStopTrigger(I)V

    .line 16
    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v2, "onBackOffStopped iface="

    .line 21
    .line 22
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string p1, " type="

    .line 29
    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p1, " stats="

    .line 37
    .line 38
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/backoff/BackOffStats;->getTriggerInfoForCurrentNetwork()Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const-string p3, "SemWifiBackOff.Controller"

    .line 53
    .line 54
    invoke-static {p3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-nez p1, :cond_1

    .line 62
    .line 63
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$1;->this$0:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    .line 64
    .line 65
    invoke-static {p0}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->-$$Nest$fgetmSarManager(Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;)Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    const/4 p1, 0x0

    .line 70
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->broadcastBackoffState(Ljava/lang/String;Z)V

    .line 71
    .line 72
    .line 73
    :cond_1
    return-void
.end method
