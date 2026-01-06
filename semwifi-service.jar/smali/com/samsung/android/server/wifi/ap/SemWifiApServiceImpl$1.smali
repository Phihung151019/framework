.class Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->registerForBroadcasts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

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
    const-string p1, "mode"

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_2

    .line 9
    .line 10
    const/16 p2, 0x40

    .line 11
    .line 12
    if-eq p1, p2, :cond_1

    .line 13
    .line 14
    const/16 p2, 0x80

    .line 15
    .line 16
    if-eq p1, p2, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fgetmWlanAdvancedDebugState(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    or-int/2addr p2, v0

    .line 26
    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fputmWlanAdvancedDebugState(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;I)V

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 30
    .line 31
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$mchangeHotspotAntenna(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 36
    .line 37
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fgetmWlanAdvancedDebugState(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    or-int/2addr p2, v0

    .line 42
    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fputmWlanAdvancedDebugState(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;I)V

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 46
    .line 47
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$mrunHotspotDebugLog(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 52
    .line 53
    const/4 p2, 0x0

    .line 54
    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fputmWlanAdvancedDebugState(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;I)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 58
    .line 59
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$mstopHotspotDebugLog(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V

    .line 60
    .line 61
    .line 62
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 63
    .line 64
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$mresetHotspotAntenna(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method
