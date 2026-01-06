.class Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner$WifiScannerHandler;
.super Landroid/os/Handler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiScannerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;Landroid/os/Looper;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner$WifiScannerHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;

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
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v1, "Got message:"

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget v1, p1, Landroid/os/Message;->what:I

    .line 12
    .line 13
    const-string v2, "MHSMcf:Scanner"

    .line 14
    .line 15
    invoke-static {v2, v1, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 16
    .line 17
    .line 18
    iget p1, p1, Landroid/os/Message;->what:I

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    if-eq p1, v0, :cond_3

    .line 22
    .line 23
    const/4 v0, 0x2

    .line 24
    if-eq p1, v0, :cond_2

    .line 25
    .line 26
    const/4 v0, 0x3

    .line 27
    if-eq p1, v0, :cond_1

    .line 28
    .line 29
    const/4 v0, 0x4

    .line 30
    if-eq p1, v0, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner$WifiScannerHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->-$$Nest$fgetmwaitingToConnect(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_4

    .line 40
    .line 41
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner$WifiScannerHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;

    .line 42
    .line 43
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->-$$Nest$fgettryingToRetry(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;)I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-lez p1, :cond_4

    .line 48
    .line 49
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner$WifiScannerHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;

    .line 50
    .line 51
    const/4 p1, -0x1

    .line 52
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->-$$Nest$mdoPartialScan(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;I)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner$WifiScannerHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;

    .line 57
    .line 58
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->-$$Nest$mstopPartialScan(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner$WifiScannerHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;

    .line 63
    .line 64
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->-$$Nest$fgetmwaitingToConnect(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-eqz p1, :cond_4

    .line 69
    .line 70
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner$WifiScannerHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;

    .line 71
    .line 72
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->-$$Nest$fgettryingToRetry(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;)I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-lez p1, :cond_4

    .line 77
    .line 78
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner$WifiScannerHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;

    .line 79
    .line 80
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->-$$Nest$fgetmMhsFreq(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;)I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->-$$Nest$mdoPartialScan(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;I)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner$WifiScannerHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;

    .line 89
    .line 90
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->-$$Nest$fgetmwaitingToConnect(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-eqz p1, :cond_4

    .line 95
    .line 96
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner$WifiScannerHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;

    .line 97
    .line 98
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->-$$Nest$fgettryingToRetry(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;)I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-lez p1, :cond_4

    .line 103
    .line 104
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner$WifiScannerHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;

    .line 105
    .line 106
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->-$$Nest$fgetmMhsFreq(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;)I

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->-$$Nest$mdoPartialScan(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;I)V

    .line 111
    .line 112
    .line 113
    :cond_4
    :goto_0
    return-void
.end method
