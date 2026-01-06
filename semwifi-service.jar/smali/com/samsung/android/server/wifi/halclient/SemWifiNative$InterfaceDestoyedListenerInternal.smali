.class Lcom/samsung/android/server/wifi/halclient/SemWifiNative$InterfaceDestoyedListenerInternal;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceDestroyedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/halclient/SemWifiNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InterfaceDestoyedListenerInternal"
.end annotation


# instance fields
.field private final mInterfaceId:I

.field final synthetic this$0:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/halclient/SemWifiNative;I)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$InterfaceDestoyedListenerInternal;->this$0:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$InterfaceDestoyedListenerInternal;->mInterfaceId:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onDestroyed(Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "Successfully torn down "

    .line 2
    .line 3
    const-string v1, "Received iface destroyed notification on an invalid iface="

    .line 4
    .line 5
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$InterfaceDestoyedListenerInternal;->this$0:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 6
    .line 7
    invoke-static {v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->-$$Nest$fgetmLock(Lcom/samsung/android/server/wifi/halclient/SemWifiNative;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    monitor-enter v2

    .line 12
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$InterfaceDestoyedListenerInternal;->this$0:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 13
    .line 14
    invoke-static {v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->-$$Nest$fgetmIfaceMgr(Lcom/samsung/android/server/wifi/halclient/SemWifiNative;)Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    iget v4, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$InterfaceDestoyedListenerInternal;->mInterfaceId:I

    .line 19
    .line 20
    invoke-static {v3, v4}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;->-$$Nest$mremoveIface(Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;I)Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    if-nez v3, :cond_1

    .line 25
    .line 26
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$InterfaceDestoyedListenerInternal;->this$0:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 27
    .line 28
    invoke-static {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/halclient/SemWifiNative;)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-eqz p0, :cond_0

    .line 33
    .line 34
    const-string p0, "SemWifiNative"

    .line 35
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    :goto_0
    monitor-exit v2

    .line 55
    return-void

    .line 56
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$InterfaceDestoyedListenerInternal;->this$0:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 57
    .line 58
    invoke-static {p0, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->-$$Nest$monInterfaceDestroyed(Lcom/samsung/android/server/wifi/halclient/SemWifiNative;Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;)V

    .line 59
    .line 60
    .line 61
    const-string p0, "SemWifiNative"

    .line 62
    .line 63
    new-instance p1, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    monitor-exit v2

    .line 79
    return-void

    .line 80
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    throw p0
.end method
