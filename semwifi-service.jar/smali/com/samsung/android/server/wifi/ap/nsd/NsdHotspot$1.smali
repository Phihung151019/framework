.class Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot$1;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStaInfoStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot$1;->this$0:Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onWifiApStaInfoStateChanged(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->-$$Nest$sfgetTAG()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p5

    .line 5
    const-string v0, "onreceive WIFI_AP_STA_STATE_CHANGED_ACTION: count : "

    .line 6
    .line 7
    const-string v1, "mWifiApState :"

    .line 8
    .line 9
    invoke-static {v0, p3, v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot$1;->this$0:Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;

    .line 14
    .line 15
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->-$$Nest$fgetmWifiApState(Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-static {p5, v1, v0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->-$$Nest$sfgetTAG()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p5

    .line 26
    const-string v0, "EVENT:"

    .line 27
    .line 28
    const-string v1, ",mac:"

    .line 29
    .line 30
    invoke-static {v0, p1, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {p5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 49
    .line 50
    .line 51
    move-result p5

    .line 52
    if-nez p5, :cond_1

    .line 53
    .line 54
    if-eqz p4, :cond_1

    .line 55
    .line 56
    const-string p4, "sta_join"

    .line 57
    .line 58
    invoke-virtual {p4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result p4

    .line 62
    if-eqz p4, :cond_0

    .line 63
    .line 64
    iget-object p4, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot$1;->this$0:Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;

    .line 65
    .line 66
    invoke-static {p4}, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->-$$Nest$fgetmWifiApState(Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;)I

    .line 67
    .line 68
    .line 69
    move-result p4

    .line 70
    const/16 p5, 0xd

    .line 71
    .line 72
    if-ne p4, p5, :cond_0

    .line 73
    .line 74
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot$1;->this$0:Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;

    .line 75
    .line 76
    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->-$$Nest$minsertMAC(Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot$1;->this$0:Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;

    .line 80
    .line 81
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->-$$Nest$fgetmHotspotHandler(Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;)Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot$HotspotHandler;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    const/4 p1, 0x1

    .line 86
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :cond_0
    const-string p4, "sta_leave"

    .line 91
    .line 92
    invoke-virtual {p4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    if-eqz p1, :cond_1

    .line 97
    .line 98
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot$1;->this$0:Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;

    .line 99
    .line 100
    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->-$$Nest$mremoveMAC(Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    if-nez p3, :cond_1

    .line 104
    .line 105
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot$1;->this$0:Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;

    .line 106
    .line 107
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->-$$Nest$mclearAllMAC(Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;)V

    .line 108
    .line 109
    .line 110
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot$1;->this$0:Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;

    .line 111
    .line 112
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->-$$Nest$fgetmHotspotHandler(Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;)Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot$HotspotHandler;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    const/4 p1, 0x2

    .line 117
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 118
    .line 119
    .line 120
    :cond_1
    return-void
.end method
