.class Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$WifiDeathRecipient;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;


# direct methods
.method private constructor <init>(Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$WifiDeathRecipient;->this$0:Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$WifiDeathRecipient;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;)V

    return-void
.end method


# virtual methods
.method public serviceDied(J)V
    .locals 4

    .line 1
    const-string v0, "IWifi HAL service died! Have a listener for it ... cookie="

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$WifiDeathRecipient;->this$0:Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->-$$Nest$fgetmLock(Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    const-string v2, "SemWifiHalHidlImpl"

    .line 11
    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$WifiDeathRecipient;->this$0:Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;

    .line 28
    .line 29
    invoke-static {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->-$$Nest$fputmWifi(Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;)V

    .line 30
    .line 31
    .line 32
    monitor-exit v1

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw p0
.end method
