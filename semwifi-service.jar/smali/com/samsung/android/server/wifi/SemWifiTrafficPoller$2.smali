.class Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$2;
.super Landroid/app/IProcessObserver$Stub;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .locals 4

    .line 1
    if-eqz p3, :cond_2

    .line 2
    .line 3
    iget-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 4
    .line 5
    invoke-static {p3}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    const-string v0, "activity"

    .line 10
    .line 11
    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    check-cast p3, Landroid/app/ActivityManager;

    .line 16
    .line 17
    invoke-virtual {p3}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    if-eqz p3, :cond_1

    .line 22
    .line 23
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object p3

    .line 27
    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 38
    .line 39
    iget v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    .line 40
    .line 41
    const/16 v2, 0x64

    .line 42
    .line 43
    if-ne v1, v2, :cond_0

    .line 44
    .line 45
    iget v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 46
    .line 47
    if-ne v1, p1, :cond_0

    .line 48
    .line 49
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 50
    .line 51
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->-$$Nest$fgetmBoostHandler(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 56
    .line 57
    const/4 v2, 0x4

    .line 58
    const/4 v3, 0x0

    .line 59
    invoke-static {v1, v2, p2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    return-void

    .line 68
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 69
    .line 70
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->-$$Nest$fgetmBoostHandler(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    const/4 p2, 0x5

    .line 79
    invoke-static {p0, p2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public onForegroundServicesChanged(III)V
    .locals 0

    .line 1
    return-void
.end method

.method public onProcessDied(II)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->-$$Nest$fgetmBoostHandler(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 p2, 0x5

    .line 12
    invoke-static {p0, p2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onProcessStarted(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method
