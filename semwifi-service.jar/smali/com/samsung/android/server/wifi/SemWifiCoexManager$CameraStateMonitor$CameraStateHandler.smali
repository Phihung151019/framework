.class Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor$CameraStateHandler;
.super Landroid/os/Handler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraStateHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor$CameraStateHandler;->this$1:Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    .line 3
    .line 4
    iget v0, p1, Landroid/os/Message;->what:I

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    if-eq v0, v1, :cond_2

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    const/4 v1, 0x3

    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor$CameraStateHandler;->this$1:Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;

    .line 17
    .line 18
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Ljava/lang/String;

    .line 21
    .line 22
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 23
    .line 24
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 25
    .line 26
    invoke-static {p0, v0, v1, p1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;->-$$Nest$mcheckCameraRunning(Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor$CameraStateHandler;->this$1:Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;

    .line 31
    .line 32
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;->-$$Nest$mhandleStop(Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor$CameraStateHandler;->this$1:Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;

    .line 37
    .line 38
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;->-$$Nest$mhandleStart(Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
