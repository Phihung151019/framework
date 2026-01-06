.class public Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$HalDeviceManagerStatusListener;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ManagerStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HalDeviceManagerStatusListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;


# direct methods
.method public static synthetic $r8$lambda$KxA6p3E9WtTVpL5u-kZ4mr1oJ84(Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$HalDeviceManagerStatusListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$HalDeviceManagerStatusListener;->lambda$onStatusChanged$0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$HalDeviceManagerStatusListener;->this$0:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$onStatusChanged$0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$HalDeviceManagerStatusListener;->this$0:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->-$$Nest$fgetmHalDeviceManager(Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;)Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->isReady()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$HalDeviceManagerStatusListener;->this$0:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mVerboseLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    .line 14
    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v3, "Device Manager onStatusChanged. isReady(): "

    .line 18
    .line 19
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-interface {v1, v2}, Lcom/samsung/android/server/wifi/util/SemWifiLog;->i(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    sget-object v1, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->sLock:Ljava/lang/Object;

    .line 33
    .line 34
    monitor-enter v1

    .line 35
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$HalDeviceManagerStatusListener;->this$0:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    .line 36
    .line 37
    invoke-static {v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->-$$Nest$fgetmDeathEventHandler(Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;)Lcom/samsung/android/server/wifi/halclient/SemWifiNative$VendorHalEventHandler;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    invoke-interface {v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$VendorHalEventHandler;->onReady()V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$HalDeviceManagerStatusListener;->this$0:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    .line 51
    .line 52
    invoke-static {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->-$$Nest$mclearState(Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;)V

    .line 53
    .line 54
    .line 55
    invoke-interface {v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$VendorHalEventHandler;->onDeath()V

    .line 56
    .line 57
    .line 58
    :cond_1
    return-void

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    throw p0
.end method


# virtual methods
.method public onStatusChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$HalDeviceManagerStatusListener;->this$0:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->-$$Nest$fgetmHalEventHandler(Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$HalDeviceManagerStatusListener$$ExternalSyntheticLambda0;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$HalDeviceManagerStatusListener$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$HalDeviceManagerStatusListener;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method
