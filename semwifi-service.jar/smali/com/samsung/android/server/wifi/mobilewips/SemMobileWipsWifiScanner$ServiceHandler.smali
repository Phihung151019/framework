.class final Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner$ServiceHandler;
.super Landroid/os/Handler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner$ServiceHandler;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method doPartialScan(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;->-$$Nest$sfgetmStarted()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "MobileWips::scanner"

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string p0, "scanner stoped"

    .line 10
    .line 11
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance v0, Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 16
    .line 17
    invoke-direct {v0}, Landroid/net/wifi/WifiScanner$ScanSettings;-><init>()V

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x2

    .line 21
    iput v2, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->type:I

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    iput v2, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    new-array v3, v3, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 28
    .line 29
    iput-object v3, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 30
    .line 31
    new-instance v4, Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 32
    .line 33
    invoke-direct {v4, p1}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    .line 34
    .line 35
    .line 36
    aput-object v4, v3, v2

    .line 37
    .line 38
    const/4 p1, 0x3

    .line 39
    iput p1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    .line 40
    .line 41
    new-instance p1, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    .line 46
    new-instance v2, Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;

    .line 47
    .line 48
    const-string v3, "\""

    .line 49
    .line 50
    invoke-static {v3, p2, v3}, Lcom/samsung/android/server/wifi/abtest/AbTestManager$4$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-direct {v2, p2}, Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    new-instance p2, Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;

    .line 58
    .line 59
    invoke-direct {p2, p3}, Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    new-instance p3, Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;

    .line 63
    .line 64
    invoke-direct {p3, p4}, Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    iget-object p2, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->hiddenNetworks:Ljava/util/List;

    .line 77
    .line 78
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner$ServiceHandler;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;

    .line 82
    .line 83
    invoke-static {p1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;->-$$Nest$fgetmWifiScanner(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;)Landroid/net/wifi/WifiScanner;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    iget-object p2, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner$ServiceHandler;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;

    .line 88
    .line 89
    invoke-static {p2}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;->-$$Nest$fgetmPartialScanListener(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;)Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner$PartialScanListener;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner$ServiceHandler;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;

    .line 94
    .line 95
    invoke-static {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;->-$$Nest$fgetmWorkSource(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;)Landroid/os/WorkSource;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-virtual {p1, v0, p2, p0}, Landroid/net/wifi/WifiScanner;->startScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanListener;Landroid/os/WorkSource;)V

    .line 100
    .line 101
    .line 102
    const-string p0, "doScanInternal started"

    .line 103
    .line 104
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/16 v1, 0x22

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string v0, "karma"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "fKarma"

    .line 19
    .line 20
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "fkarmaOri"

    .line 25
    .line 26
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const-string v3, "freq"

    .line 31
    .line 32
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner$ServiceHandler;->doPartialScan(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
