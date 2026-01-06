.class Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$3;
.super Landroid/app/HomeVisibilityListener;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->registerUserActivityReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$3;->this$0:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/app/HomeVisibilityListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onHomeVisibilityChanged(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$3;->this$0:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "isHomeActivityVisible : "

    .line 10
    .line 11
    const-string v1, "SemWifiEasySetupManager"

    .line 12
    .line 13
    invoke-static {v0, v1, p1}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$3;->this$0:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->-$$Nest$misEasySetupEnabled(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$3;->this$0:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->isSufficientPartialScan()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$3;->this$0:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    .line 35
    .line 36
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;)Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$EasySetupHandler;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const/4 v0, 0x5

    .line 41
    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$3;->this$0:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    .line 49
    .line 50
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->-$$Nest$fgetmClock(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;)Lcom/samsung/android/server/wifi/util/SemClock;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    .line 55
    .line 56
    .line 57
    move-result-wide v0

    .line 58
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mLastPartialScanTimeStamp:J

    .line 59
    .line 60
    :cond_1
    return-void
.end method
