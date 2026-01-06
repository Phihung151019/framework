.class Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot$HotspotHandler;
.super Landroid/os/Handler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HotspotHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;Landroid/os/Looper;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot$HotspotHandler;->this$0:Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;

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
    .locals 4

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->-$$Nest$sfgetTAG()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "handleMessage:"

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget v2, p1, Landroid/os/Message;->what:I

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, " isDiscoveryStarted "

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot$HotspotHandler;->this$0:Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;

    .line 23
    .line 24
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->-$$Nest$fgetisDiscoveryStarted(Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-static {v1, v2, v0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget p1, p1, Landroid/os/Message;->what:I

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    const/4 v1, 0x2

    .line 35
    if-eq p1, v0, :cond_1

    .line 36
    .line 37
    if-eq p1, v1, :cond_0

    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot$HotspotHandler;->this$0:Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;

    .line 41
    .line 42
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->-$$Nest$mstopDiscovery(Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot$HotspotHandler;->this$0:Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;

    .line 50
    .line 51
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->-$$Nest$fgetisDiscoveryStarted(Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-nez p1, :cond_2

    .line 56
    .line 57
    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-nez p1, :cond_2

    .line 62
    .line 63
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot$HotspotHandler;->this$0:Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;

    .line 64
    .line 65
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->-$$Nest$mstartDiscovery(Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;)V

    .line 66
    .line 67
    .line 68
    :cond_2
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 69
    .line 70
    .line 71
    const-wide/32 v2, 0x1d4c0

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 75
    .line 76
    .line 77
    return-void
.end method
