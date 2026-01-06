.class Lcom/samsung/android/server/wifi/halclient/SemWifiNative$VendorHalEventHandlerInternal;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/halclient/SemWifiNative$VendorHalEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/halclient/SemWifiNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VendorHalEventHandlerInternal"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;


# direct methods
.method private constructor <init>(Lcom/samsung/android/server/wifi/halclient/SemWifiNative;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$VendorHalEventHandlerInternal;->this$0:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/halclient/SemWifiNative;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$VendorHalEventHandlerInternal;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiNative;)V

    return-void
.end method


# virtual methods
.method public onDeath()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$VendorHalEventHandlerInternal;->this$0:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->-$$Nest$fgetmLock(Lcom/samsung/android/server/wifi/halclient/SemWifiNative;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    const-string v0, "SemWifiNative"

    .line 9
    .line 10
    const-string v1, "Vendor HAL died. Cleaning up internal state."

    .line 11
    .line 12
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw v0
.end method

.method public onReady()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$VendorHalEventHandlerInternal;->this$0:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->-$$Nest$fgetmLock(Lcom/samsung/android/server/wifi/halclient/SemWifiNative;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    const-string v0, "SemWifiNative"

    .line 9
    .line 10
    const-string v1, "Vendor HAL ready."

    .line 11
    .line 12
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw v0
.end method
