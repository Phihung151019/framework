.class Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$3;
.super Landroid/database/ContentObserver;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->registerObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$3;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$3;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->isAutoWifiEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$3;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    invoke-virtual {p1, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$3;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->getAutoWifiStartTime()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    const-wide/16 v2, 0x0

    .line 22
    .line 23
    cmp-long p1, v0, v2

    .line 24
    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$3;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$3;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v1, "sem_auto_wifi_last_user_state"

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->setIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 43
    .line 44
    .line 45
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$3;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 46
    .line 47
    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmClock(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/util/SemClock;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/util/SemClock;->getWallClockMillis()J

    .line 52
    .line 53
    .line 54
    move-result-wide v0

    .line 55
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$3;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 56
    .line 57
    invoke-static {p0, v0, v1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$msetAutoWifiBigdataLoggingStart(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;J)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$3;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 62
    .line 63
    const/4 p1, 0x3

    .line 64
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 65
    .line 66
    .line 67
    return-void
.end method
