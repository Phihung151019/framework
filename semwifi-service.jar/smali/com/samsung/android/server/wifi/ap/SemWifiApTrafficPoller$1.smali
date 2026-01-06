.class Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$1;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStaInfoStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

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
    const-string p1, "onreceive WIFI_AP_STA_STATE_CHANGED_ACTION:count : "

    .line 2
    .line 3
    const-string p2, "SemWifiApTrafficPoller"

    .line 4
    .line 5
    invoke-static {p1, p3, p2}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x6

    .line 9
    if-lez p3, :cond_0

    .line 10
    .line 11
    iget-object p3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    .line 12
    .line 13
    invoke-static {p3}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmWifiApTrafficPollerWorkHandler(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    if-eqz p3, :cond_1

    .line 18
    .line 19
    iget-object p3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    .line 20
    .line 21
    invoke-static {p3}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmWifiApTrafficPollerWorkHandler(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    invoke-virtual {p3, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 26
    .line 27
    .line 28
    const-string p3, "send START_TPUT_LOG"

    .line 29
    .line 30
    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    .line 34
    .line 35
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmWifiApTrafficPollerWorkHandler(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const-wide/16 p2, 0x3e8

    .line 40
    .line 41
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    .line 46
    .line 47
    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmWifiApTrafficPollerWorkHandler(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    if-eqz p2, :cond_1

    .line 52
    .line 53
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    .line 54
    .line 55
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmWifiApTrafficPollerWorkHandler(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 60
    .line 61
    .line 62
    :cond_1
    return-void
.end method
