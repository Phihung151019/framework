.class Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$5;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->registerBR()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

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
    .locals 2

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
    const/4 p2, 0x2

    .line 9
    const/4 v0, 0x0

    .line 10
    const-string v1, "iwh.activation"

    .line 11
    .line 12
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    const-string v1, "iwh.deactivation"

    .line 19
    .line 20
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 28
    .line 29
    const-string v1, "CMD deactivation"

    .line 30
    .line 31
    invoke-static {p1, v1, p2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$maddEvent(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;I)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 35
    .line 36
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmIwhCmdControl(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 41
    .line 42
    .line 43
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 44
    .line 45
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->renewConnection(Z)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 50
    .line 51
    const-string v1, "CMD activation"

    .line 52
    .line 53
    invoke-static {p1, v1, p2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$maddEvent(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;I)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 57
    .line 58
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmIwhCmdControl(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    const/4 p2, 0x1

    .line 63
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 64
    .line 65
    .line 66
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 67
    .line 68
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->renewConnection(Z)V

    .line 69
    .line 70
    .line 71
    return-void
.end method
