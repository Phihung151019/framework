.class Lcom/samsung/android/server/wifi/share/WifiContinuityService$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/share/WifiContinuityService;->registerBroadcast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$2;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    const-string p1, "SemWifi.Continuity"

    .line 2
    .line 3
    const-string v0, "received data from nearby device"

    .line 4
    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$2;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$fgetclock(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Lcom/samsung/android/server/wifi/util/SemClock;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$fputlastReceivedDataTimeMs(Lcom/samsung/android/server/wifi/share/WifiContinuityService;J)V

    .line 19
    .line 20
    .line 21
    invoke-static {p2}, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->parseJson(Landroid/content/Intent;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    if-eqz p2, :cond_1

    .line 34
    .line 35
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    check-cast p2, Lcom/samsung/android/server/wifi/share/continuity/WifiAutoShareData;

    .line 40
    .line 41
    instance-of v0, p2, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;

    .line 42
    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$2;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 46
    .line 47
    const/16 v1, 0x22

    .line 48
    .line 49
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/share/continuity/WifiAutoShareData;->getData()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-virtual {v0, v1, p2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    return-void
.end method
