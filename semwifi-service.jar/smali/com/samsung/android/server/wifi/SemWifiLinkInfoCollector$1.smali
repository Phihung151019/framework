.class Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Landroid/os/HandlerThread;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;

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
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const-string v0, "com.samsung.android.wifi.LATENCYMODE"

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_2

    .line 15
    .line 16
    const-string p1, "Enable"

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-lez p1, :cond_1

    .line 24
    .line 25
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;

    .line 26
    .line 27
    const/4 p1, 0x5

    .line 28
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->-$$Nest$msendInternalMessage(Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;I)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;

    .line 33
    .line 34
    const/4 p1, 0x6

    .line 35
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->-$$Nest$msendInternalMessage(Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;I)V

    .line 36
    .line 37
    .line 38
    :cond_2
    :goto_0
    return-void
.end method
