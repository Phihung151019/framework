.class Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$1;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$1;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$1;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;

    .line 2
    .line 3
    invoke-static {p2}, Lcom/samsung/android/mhs/ai/ISemMhsAiService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/mhs/ai/ISemMhsAiService;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->iMhsAiService:Lcom/samsung/android/mhs/ai/ISemMhsAiService;

    .line 8
    .line 9
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 1
    const-string p1, "SemWifiApServiceDetector"

    .line 2
    .line 3
    const-string v0, "Service has unexpectedly disconnected"

    .line 4
    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$1;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->-$$Nest$fgetisMlLibraryReady(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$1;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    iput-object v1, p1, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->iMhsAiService:Lcom/samsung/android/mhs/ai/ISemMhsAiService;

    .line 22
    .line 23
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->-$$Nest$fputisMhsAiServiceBinded(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;Z)V

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$1;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;

    .line 27
    .line 28
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->-$$Nest$fgetmServiceDetectionHandler(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;)Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$ServiceDetectionHandler;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const/4 p1, 0x6

    .line 33
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 38
    .line 39
    .line 40
    return-void
.end method
