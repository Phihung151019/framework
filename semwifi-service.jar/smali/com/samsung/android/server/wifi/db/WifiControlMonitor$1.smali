.class Lcom/samsung/android/server/wifi/db/WifiControlMonitor$1;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Ljava/util/function/BiConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/db/WifiControlMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/BiConsumer<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/db/WifiControlMonitor;


# direct methods
.method public static synthetic $r8$lambda$fe4mvOyEQRgoulGBhqCfEurvv38(Lcom/samsung/android/server/wifi/db/WifiControlMonitor$1;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/db/WifiControlMonitor$1;->lambda$accept$0(Ljava/lang/String;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method constructor <init>(Lcom/samsung/android/server/wifi/db/WifiControlMonitor;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/db/WifiControlMonitor$1;->this$0:Lcom/samsung/android/server/wifi/db/WifiControlMonitor;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$accept$0(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/db/WifiControlMonitor$1;->this$0:Lcom/samsung/android/server/wifi/db/WifiControlMonitor;

    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/db/WifiControlMonitor;->-$$Nest$mnotifyToClients(Lcom/samsung/android/server/wifi/db/WifiControlMonitor;Ljava/lang/String;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/db/WifiControlMonitor$1;->accept(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public accept(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/db/WifiControlMonitor$1;->this$0:Lcom/samsung/android/server/wifi/db/WifiControlMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/db/WifiControlMonitor;->-$$Nest$fgetlastWifiState(Lcom/samsung/android/server/wifi/db/WifiControlMonitor;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    const-string v1, "Wi-Fi state was changed, packageName="

    const-string v2, " toggleState="

    .line 4
    invoke-static {v1, p1, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "enabled"

    goto :goto_1

    :cond_1
    const-string v2, "disabled"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eq v0, v2, :cond_2

    const-string v2, " (wrong state)"

    goto :goto_2

    :cond_2
    const-string v2, ""

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    const-string v2, "SemWifi.ControlMonitor"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v1, p0, Lcom/samsung/android/server/wifi/db/WifiControlMonitor$1;->this$0:Lcom/samsung/android/server/wifi/db/WifiControlMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/db/WifiControlMonitor;->-$$Nest$fgetwifiManagerProxy(Lcom/samsung/android/server/wifi/db/WifiControlMonitor;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getLastWifiCallerPackageIfKnown(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object p1

    .line 9
    const-string v1, "android"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    .line 10
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 11
    :goto_3
    iget-object p2, p0, Lcom/samsung/android/server/wifi/db/WifiControlMonitor$1;->this$0:Lcom/samsung/android/server/wifi/db/WifiControlMonitor;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/db/WifiControlMonitor;->-$$Nest$fgetmWifiControlHistoryManager(Lcom/samsung/android/server/wifi/db/WifiControlMonitor;)Lcom/samsung/android/server/wifi/db/WifiControlHistoryManager;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/samsung/android/server/wifi/db/WifiControlHistoryManager;->addOrUpdateHistory(Ljava/lang/String;Z)Z

    .line 12
    iget-object p2, p0, Lcom/samsung/android/server/wifi/db/WifiControlMonitor$1;->this$0:Lcom/samsung/android/server/wifi/db/WifiControlMonitor;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/db/WifiControlMonitor;->-$$Nest$fgetwifiThreadRunner(Lcom/samsung/android/server/wifi/db/WifiControlMonitor;)Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    move-result-object p2

    new-instance v1, Lcom/samsung/android/server/wifi/db/WifiControlMonitor$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, v0}, Lcom/samsung/android/server/wifi/db/WifiControlMonitor$1$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/db/WifiControlMonitor$1;Ljava/lang/String;Z)V

    invoke-virtual {p2, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
