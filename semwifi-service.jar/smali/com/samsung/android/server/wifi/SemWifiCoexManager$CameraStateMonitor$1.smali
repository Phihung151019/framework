.class Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor$1;
.super Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor$1;->this$1:Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onCameraDeviceStateChanged(Ljava/lang/String;IILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "onCameraDeviceStateChanged:  cameraId="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, " facing="

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, " newCameraState="

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, " clientName="

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p4

    .line 39
    const-string v0, "SemWifiCoexManager"

    .line 40
    .line 41
    invoke-static {v0, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    iget-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor$1;->this$1:Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;

    .line 45
    .line 46
    invoke-static {p4}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;->-$$Nest$fgetmCameraStateHandler(Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;)Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor$CameraStateHandler;

    .line 47
    .line 48
    .line 49
    move-result-object p4

    .line 50
    if-eqz p4, :cond_0

    .line 51
    .line 52
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor$1;->this$1:Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;

    .line 53
    .line 54
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;->-$$Nest$fgetmCameraStateHandler(Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;)Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor$CameraStateHandler;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    const/4 p4, 0x3

    .line 59
    invoke-virtual {p0, p4, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 64
    .line 65
    .line 66
    :cond_0
    return-void
.end method
