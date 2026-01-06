.class Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner$WifiScannerHandler;
.super Landroid/os/Handler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiScannerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;Landroid/os/Looper;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner$WifiScannerHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;

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
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner$WifiScannerHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;->-$$Nest$fgetTAG(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "Got message:"

    .line 13
    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget v2, p1, Landroid/os/Message;->what:I

    .line 18
    .line 19
    invoke-static {v0, v2, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 20
    .line 21
    .line 22
    iget p1, p1, Landroid/os/Message;->what:I

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    if-eq p1, v0, :cond_3

    .line 26
    .line 27
    const/4 v0, 0x2

    .line 28
    if-eq p1, v0, :cond_2

    .line 29
    .line 30
    const/4 v0, 0x3

    .line 31
    if-eq p1, v0, :cond_1

    .line 32
    .line 33
    const/4 v0, 0x4

    .line 34
    if-eq p1, v0, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner$WifiScannerHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;

    .line 38
    .line 39
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;->-$$Nest$fgetmwaitingToConnect(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_4

    .line 44
    .line 45
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner$WifiScannerHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;

    .line 46
    .line 47
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;->-$$Nest$fgettryingToRetry(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;)I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-lez p1, :cond_4

    .line 52
    .line 53
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner$WifiScannerHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;

    .line 54
    .line 55
    const/4 p1, -0x1

    .line 56
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;->-$$Nest$mdoPartialScan(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;I)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner$WifiScannerHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;

    .line 61
    .line 62
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;->-$$Nest$mstopPartialScan(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner$WifiScannerHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;

    .line 67
    .line 68
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;->-$$Nest$fgetmwaitingToConnect(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-eqz p1, :cond_4

    .line 73
    .line 74
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner$WifiScannerHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;

    .line 75
    .line 76
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;->-$$Nest$fgettryingToRetry(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;)I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-lez p1, :cond_4

    .line 81
    .line 82
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner$WifiScannerHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;

    .line 83
    .line 84
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;->-$$Nest$fgetmMhsFreq(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;)I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;->-$$Nest$mdoPartialScan(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;I)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner$WifiScannerHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;

    .line 93
    .line 94
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;->-$$Nest$fgetmwaitingToConnect(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;)Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-eqz p1, :cond_4

    .line 99
    .line 100
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner$WifiScannerHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;

    .line 101
    .line 102
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;->-$$Nest$fgettryingToRetry(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;)I

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-lez p1, :cond_4

    .line 107
    .line 108
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner$WifiScannerHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;

    .line 109
    .line 110
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;->-$$Nest$fgetmMhsFreq(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;)I

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;->-$$Nest$mdoPartialScan(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;I)V

    .line 115
    .line 116
    .line 117
    :cond_4
    :goto_0
    return-void
.end method
