.class Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver$3;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Landroid/os/Handler;Lcom/samsung/android/server/wifi/SemWifiInjector;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver$3;->this$0:Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver;

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
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string p2, "android.intent.action.SIM_STATE_CHANGED"

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver$3;->this$0:Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver;

    .line 14
    .line 15
    const-string p2, "ACTION_SIM_STATE_CHANGED"

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver;->localLog(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver$3;->this$0:Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver;

    .line 21
    .line 22
    invoke-static {p0}, Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver;->-$$Nest$mupdateCarrierWifiOffload(Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method
