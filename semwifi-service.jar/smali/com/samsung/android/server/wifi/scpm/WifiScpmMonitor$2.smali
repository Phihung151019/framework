.class Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor$2;
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
.method public static synthetic $r8$lambda$Kz7kXUSv8GoS4-MQttPdxeRFIyg(Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor$2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor$2;->lambda$onReceive$0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor$2;->this$0:Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$onReceive$0()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor$2;->this$0:Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->-$$Nest$mupdateToken(Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    const-string p1, "SemWifi.Scpm"

    .line 2
    .line 3
    const-string p2, "cleared scpm app data, token will be updated 1 min. later"

    .line 4
    .line 5
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor$2;->this$0:Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->-$$Nest$fgetisPendingToUpdateToken(Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor$2;->this$0:Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->-$$Nest$fputisPendingToUpdateToken(Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor$2;->this$0:Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->-$$Nest$fgethandler(Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;)Landroid/os/Handler;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    new-instance p2, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor$2$$ExternalSyntheticLambda0;

    .line 28
    .line 29
    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor$2$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor$2;)V

    .line 30
    .line 31
    .line 32
    const-wide/32 v0, 0xea60

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method
