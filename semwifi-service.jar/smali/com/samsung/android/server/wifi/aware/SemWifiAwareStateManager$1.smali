.class Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->start(Landroid/content/Context;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$1;->this$0:Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;

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
    iget-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$1;->this$0:Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->-$$Nest$fgetmDbg(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const-string v0, "SemWifiAwareStateManager"

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const-string p1, "OnReceive - ACTION_WIFI_AWARE_RESOURCE_CHANGED"

    .line 12
    .line 13
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$1;->this$0:Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->-$$Nest$fgetmWifiAwareManager(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;)Landroid/net/wifi/aware/WifiAwareManager;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Landroid/net/wifi/aware/WifiAwareManager;->getCharacteristics()Landroid/net/wifi/aware/Characteristics;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-eqz p1, :cond_3

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/net/wifi/aware/Characteristics;->getNumberOfSupportedDataPaths()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    const-string v1, "android.net.wifi.aware.extra.AWARE_RESOURCES"

    .line 33
    .line 34
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    check-cast p2, Landroid/net/wifi/aware/AwareResources;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$1;->this$0:Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;

    .line 41
    .line 42
    invoke-virtual {p2}, Landroid/net/wifi/aware/AwareResources;->getAvailableDataPathsCount()I

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    sub-int p2, p1, p2

    .line 47
    .line 48
    invoke-static {v1, p2}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->-$$Nest$fputmCurrentNdpCount(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;I)V

    .line 49
    .line 50
    .line 51
    iget-object p2, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$1;->this$0:Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;

    .line 52
    .line 53
    invoke-static {p2}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->-$$Nest$fgetmDbg(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;)Z

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    if-eqz p2, :cond_1

    .line 58
    .line 59
    const-string p2, "maxNdp: "

    .line 60
    .line 61
    const-string v1, ", currentNdp: "

    .line 62
    .line 63
    invoke-static {p2, p1, v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iget-object p2, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$1;->this$0:Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;

    .line 68
    .line 69
    invoke-static {p2}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->-$$Nest$fgetmCurrentNdpCount(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;)I

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$1;->this$0:Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;

    .line 84
    .line 85
    invoke-static {p1}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->-$$Nest$fgetmSetWifiScanAutoBlock(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;)Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-eqz p1, :cond_3

    .line 90
    .line 91
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$1;->this$0:Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;

    .line 92
    .line 93
    invoke-static {p0}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->-$$Nest$fgetmCurrentNdpCount(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;)I

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-gtz p1, :cond_2

    .line 98
    .line 99
    const/4 p1, 0x1

    .line 100
    goto :goto_0

    .line 101
    :cond_2
    const/4 p1, 0x0

    .line 102
    :goto_0
    invoke-static {p1, p0}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->-$$Nest$msetLegacyScanningEnable(ZLcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;)V

    .line 103
    .line 104
    .line 105
    :cond_3
    return-void
.end method
