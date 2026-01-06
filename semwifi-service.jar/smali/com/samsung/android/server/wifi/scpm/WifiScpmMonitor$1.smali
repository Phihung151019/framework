.class Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->setScpmPackageReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor$1;->this$0:Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;

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
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p2, " cur: "

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object p2, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor$1;->this$0:Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;

    .line 19
    .line 20
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->isActive()Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string p2, "SemWifi.Scpm"

    .line 32
    .line 33
    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    iget-object p0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor$1;->this$0:Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;

    .line 37
    .line 38
    invoke-static {p0}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->-$$Nest$mupdateToken(Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
