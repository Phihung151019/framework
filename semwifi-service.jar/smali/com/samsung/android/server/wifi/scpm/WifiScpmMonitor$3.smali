.class Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor$3;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->register(Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;

.field final synthetic val$executor:Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor$3;->this$0:Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor$3;->val$executor:Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor$3;->val$executor:Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor$3;->this$0:Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;

    .line 4
    .line 5
    invoke-interface {p1, p0}, Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;->onScpmPolicyUpdated(Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catch_0
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 11
    .line 12
    .line 13
    return-void
.end method
