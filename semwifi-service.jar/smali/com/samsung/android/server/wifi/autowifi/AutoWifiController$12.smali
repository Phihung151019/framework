.class Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$12;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$12;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAddAndMonitorGeofence()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$12;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$msendBroadcastBubbleTip(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onGeofenceStateChanged(ILjava/lang/String;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$12;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmManualGeofenceControl(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "AutoWifiController"

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string p0, "skip to update geofence state, manual control mode"

    .line 12
    .line 13
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const-string v0, "mGeofenceStateListener state is "

    .line 18
    .line 19
    invoke-static {p1, v0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$12;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 27
    .line 28
    const/16 v1, 0x67

    .line 29
    .line 30
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->access$500(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;I)V

    .line 31
    .line 32
    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    iget-object v2, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$12;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    const-wide/16 v7, 0x3e8

    .line 39
    .line 40
    const/16 v3, 0x67

    .line 41
    .line 42
    move v4, p1

    .line 43
    move-object v6, p2

    .line 44
    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/util/StateMachine;->sendMessageDelayed(IIILjava/lang/Object;J)V

    .line 45
    .line 46
    .line 47
    :cond_1
    return-void
.end method
