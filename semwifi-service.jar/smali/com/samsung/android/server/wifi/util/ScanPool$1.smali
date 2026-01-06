.class Lcom/samsung/android/server/wifi/util/ScanPool$1;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Landroid/net/wifi/WifiScanner$ScanListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/util/ScanPool;->startMonitoring(Landroid/net/wifi/WifiScanner;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/util/ScanPool;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/util/ScanPool;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/util/ScanPool$1;->this$0:Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/ScanPool$1;->this$0:Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/util/ScanPool;->-$$Nest$mnotifyToClients(Lcom/samsung/android/server/wifi/util/ScanPool;ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onFullResult(Landroid/net/wifi/ScanResult;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onPeriodChanged(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onResults([Landroid/net/wifi/WifiScanner$ScanData;)V
    .locals 5

    .line 1
    const-string v0, "SemWifiScanPool"

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const-string p0, "failed to get scan results"

    .line 6
    .line 7
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    array-length v1, p1

    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    const-string p0, "scan result is empty"

    .line 15
    .line 16
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    array-length v1, p1

    .line 26
    const/4 v2, 0x0

    .line 27
    move v3, v2

    .line 28
    :goto_0
    if-ge v3, v1, :cond_3

    .line 29
    .line 30
    aget-object v4, p1, v3

    .line 31
    .line 32
    invoke-virtual {v4}, Landroid/net/wifi/WifiScanner$ScanData;->getResults()[Landroid/net/wifi/ScanResult;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    if-nez v4, :cond_2

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 44
    .line 45
    .line 46
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/ScanPool$1;->this$0:Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 50
    .line 51
    aget-object p1, p1, v2

    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/net/wifi/WifiScanner$ScanData;->isFullBandScanResults()Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    invoke-static {p0, v0, p1}, Lcom/samsung/android/server/wifi/util/ScanPool;->-$$Nest$mupdateScanResults(Lcom/samsung/android/server/wifi/util/ScanPool;Ljava/util/List;Z)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .line 1
    return-void
.end method
