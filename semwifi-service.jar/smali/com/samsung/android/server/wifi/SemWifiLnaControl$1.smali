.class Lcom/samsung/android/server/wifi/SemWifiLnaControl$1;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiLnaControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onWifiUsabilityStats(IZLandroid/net/wifi/WifiUsabilityStatsEntry;)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlnaControlHandler(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 10
    .line 11
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlnaControlHandler(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const/4 p2, 0x2

    .line 16
    invoke-static {p0, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const-wide/16 p2, 0x0

    .line 21
    .line 22
    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method
