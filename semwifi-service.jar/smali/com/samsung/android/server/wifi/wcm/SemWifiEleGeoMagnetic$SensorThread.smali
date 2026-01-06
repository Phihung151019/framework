.class Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$SensorThread;
.super Ljava/lang/Thread;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;


# direct methods
.method private constructor <init>(Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$SensorThread;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$SensorThread;-><init>(Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    const-string v0, "Ele detector remove"

    .line 2
    .line 3
    const-string v1, "SemWifiEleGeoMagnetic"

    .line 4
    .line 5
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$SensorThread;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;

    .line 16
    .line 17
    invoke-static {v2}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->-$$Nest$fgethandler(Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;)Landroid/os/Handler;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    new-instance v3, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$SensorThread$1;

    .line 22
    .line 23
    invoke-direct {v3, p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$SensorThread$1;-><init>(Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$SensorThread;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    .line 28
    .line 29
    const-wide/16 v2, 0x64

    .line 30
    .line 31
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_2

    .line 37
    :catch_0
    move-exception p0

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    .line 45
    .line 46
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :goto_2
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    throw p0
.end method
