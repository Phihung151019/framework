.class Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$1;->this$0:Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;

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
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string p2, "com.samsung.android.server.wifi.ui.PICK_WIFI_NETWORK"

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    if-nez p2, :cond_1

    .line 15
    .line 16
    const-string p2, "com.samsung.android.server.wifi.ui.USER_DISMISSED_NOTIFICATION"

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    if-nez p2, :cond_0

    .line 23
    .line 24
    const-string p0, "unhandled intent "

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-string p1, "SemWifiNotificationController"

    .line 31
    .line 32
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$1;->this$0:Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;

    .line 37
    .line 38
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->-$$Nest$mhandleUserDismissedAction(Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$1;->this$0:Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;

    .line 43
    .line 44
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->-$$Nest$mhandleSeeAllNetworksAction(Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method
