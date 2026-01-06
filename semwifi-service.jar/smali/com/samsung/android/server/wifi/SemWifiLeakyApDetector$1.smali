.class Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$1;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

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
    if-eqz p2, :cond_1

    .line 2
    .line 3
    invoke-virtual {p3}, Landroid/net/wifi/WifiUsabilityStatsEntry;->getRssi()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 8
    .line 9
    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$fgetmIsConnected(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)Z

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    if-eqz p2, :cond_1

    .line 14
    .line 15
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 16
    .line 17
    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$fgetmRssi(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    const/16 p3, -0x41

    .line 22
    .line 23
    if-le p2, p3, :cond_0

    .line 24
    .line 25
    if-gt p1, p3, :cond_0

    .line 26
    .line 27
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 28
    .line 29
    invoke-static {p2, p1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$fputmRssi(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;I)V

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 33
    .line 34
    const/4 p1, 0x6

    .line 35
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 40
    .line 41
    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$fgetmRssi(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)I

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    const/16 p3, -0x3c

    .line 46
    .line 47
    if-ge p2, p3, :cond_1

    .line 48
    .line 49
    if-lt p1, p3, :cond_1

    .line 50
    .line 51
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 52
    .line 53
    invoke-static {p2, p1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$fputmRssi(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;I)V

    .line 54
    .line 55
    .line 56
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 57
    .line 58
    const/4 p1, 0x7

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 60
    .line 61
    .line 62
    :cond_1
    return-void
.end method
