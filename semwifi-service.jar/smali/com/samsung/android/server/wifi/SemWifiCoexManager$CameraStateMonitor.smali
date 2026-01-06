.class Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiCoexManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraStateMonitor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor$CameraStateHandler;
    }
.end annotation


# static fields
.field private static final MSG_CAMERA_CHANGED:I = 0x3

.field private static final MSG_START:I = 0x1

.field private static final MSG_STOP:I = 0x2


# instance fields
.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private mCameraStateCallback:Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;

.field private mCameraStateHandler:Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor$CameraStateHandler;

.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCameraStateHandler(Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;)Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor$CameraStateHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;->mCameraStateHandler:Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor$CameraStateHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcheckCameraRunning(Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;->checkCameraRunning(Ljava/lang/String;II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleStart(Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;->handleStart()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleStop(Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;->handleStop()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/SemWifiCoexManager;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 8
    .line 9
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;->mCameraStateHandler:Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor$CameraStateHandler;

    .line 10
    .line 11
    new-instance p1, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor$1;

    .line 12
    .line 13
    invoke-direct {p1, p0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor$1;-><init>(Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;->mCameraStateCallback:Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;

    .line 17
    .line 18
    const-string p1, "camera"

    .line 19
    .line 20
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Landroid/hardware/camera2/CameraManager;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 27
    .line 28
    new-instance p1, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor$CameraStateHandler;

    .line 29
    .line 30
    invoke-direct {p1, p0, p3}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor$CameraStateHandler;-><init>(Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;Landroid/os/Looper;)V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;->mCameraStateHandler:Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor$CameraStateHandler;

    .line 34
    .line 35
    return-void
.end method

.method private checkCameraRunning(Ljava/lang/String;II)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto/16 :goto_1

    .line 4
    .line 5
    :cond_0
    const-string p1, "SemWifiCoexManager"

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez p3, :cond_1

    .line 10
    .line 11
    iget-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 12
    .line 13
    invoke-static {p3, v0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fputisCameraRunning(Lcom/samsung/android/server/wifi/SemWifiCoexManager;Z)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$sfgetDBG()Z

    .line 17
    .line 18
    .line 19
    move-result p3

    .line 20
    if-eqz p3, :cond_2

    .line 21
    .line 22
    const-string p3, "CAMERA_STATE_OPEN"

    .line 23
    .line 24
    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v2, 0x3

    .line 29
    if-ne p3, v2, :cond_2

    .line 30
    .line 31
    iget-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 32
    .line 33
    invoke-static {p3, v1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fputisCameraRunning(Lcom/samsung/android/server/wifi/SemWifiCoexManager;Z)V

    .line 34
    .line 35
    .line 36
    iget-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 37
    .line 38
    invoke-static {p3, v1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fputmCamFrontBackoffEnable(Lcom/samsung/android/server/wifi/SemWifiCoexManager;Z)V

    .line 39
    .line 40
    .line 41
    iget-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 42
    .line 43
    invoke-static {p3, v1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fputmCamBackBackoffEnable(Lcom/samsung/android/server/wifi/SemWifiCoexManager;Z)V

    .line 44
    .line 45
    .line 46
    iget-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 47
    .line 48
    invoke-static {p3}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$msetWifiCustomBackoff(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)V

    .line 49
    .line 50
    .line 51
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$sfgetDBG()Z

    .line 52
    .line 53
    .line 54
    move-result p3

    .line 55
    if-eqz p3, :cond_2

    .line 56
    .line 57
    const-string p3, "CAMERA_STATE_CLOSED"

    .line 58
    .line 59
    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    :cond_2
    :goto_0
    iget-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 63
    .line 64
    invoke-static {p3}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fgetisCameraRunning(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)Z

    .line 65
    .line 66
    .line 67
    move-result p3

    .line 68
    if-eqz p3, :cond_6

    .line 69
    .line 70
    if-ne p2, v0, :cond_4

    .line 71
    .line 72
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$sfgetDBG()Z

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    if-eqz p2, :cond_3

    .line 77
    .line 78
    const-string p2, "CAMERA_FACING_FRONT"

    .line 79
    .line 80
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 84
    .line 85
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fputmCamFrontBackoffEnable(Lcom/samsung/android/server/wifi/SemWifiCoexManager;Z)V

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 89
    .line 90
    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fputmCamBackBackoffEnable(Lcom/samsung/android/server/wifi/SemWifiCoexManager;Z)V

    .line 91
    .line 92
    .line 93
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 94
    .line 95
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$msetWifiCustomBackoff(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :cond_4
    if-nez p2, :cond_6

    .line 100
    .line 101
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$sfgetDBG()Z

    .line 102
    .line 103
    .line 104
    move-result p2

    .line 105
    if-eqz p2, :cond_5

    .line 106
    .line 107
    const-string p2, "CAMERA_FACING_BACK"

    .line 108
    .line 109
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 113
    .line 114
    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fputmCamFrontBackoffEnable(Lcom/samsung/android/server/wifi/SemWifiCoexManager;Z)V

    .line 115
    .line 116
    .line 117
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 118
    .line 119
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fputmCamBackBackoffEnable(Lcom/samsung/android/server/wifi/SemWifiCoexManager;Z)V

    .line 120
    .line 121
    .line 122
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 123
    .line 124
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$msetWifiCustomBackoff(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)V

    .line 125
    .line 126
    .line 127
    :cond_6
    :goto_1
    return-void
.end method

.method private handleStart()V
    .locals 3

    .line 1
    const-string v0, "SemWifiCoexManager"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fputisCameraRunning(Lcom/samsung/android/server/wifi/SemWifiCoexManager;Z)V

    .line 7
    .line 8
    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;->mCameraStateCallback:Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;->mCameraStateHandler:Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor$CameraStateHandler;

    .line 14
    .line 15
    invoke-virtual {v1, v2, p0}, Landroid/hardware/camera2/CameraManager;->registerSemCameraDeviceStateCallback(Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catch_0
    move-exception p0

    .line 20
    goto :goto_0

    .line 21
    :catch_1
    move-exception p0

    .line 22
    goto :goto_1

    .line 23
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v2, "Unknown exception occurred while starting CameraStateMonitor:"

    .line 26
    .line 27
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    goto :goto_2

    .line 45
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v2, "IllegalArgumentException occurred while starting CameraStateMonitor:"

    .line 48
    .line 49
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    :goto_2
    return-void
.end method

.method private handleStop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;->mCameraStateCallback:Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraManager;->unregisterSemCameraDeviceStateCallback(Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public start()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;->mCameraStateHandler:Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor$CameraStateHandler;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;->mCameraStateHandler:Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor$CameraStateHandler;

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5
    .line 6
    .line 7
    return-void
.end method
