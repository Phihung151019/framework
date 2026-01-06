.class Lcom/samsung/android/server/wifi/autowifi/Scanner$NetworkPnoScanListener;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Landroid/net/wifi/WifiScanner$PnoScanListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/autowifi/Scanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkPnoScanListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/autowifi/Scanner;


# direct methods
.method private constructor <init>(Lcom/samsung/android/server/wifi/autowifi/Scanner;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner$NetworkPnoScanListener;->this$0:Lcom/samsung/android/server/wifi/autowifi/Scanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/autowifi/Scanner;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/Scanner$NetworkPnoScanListener;-><init>(Lcom/samsung/android/server/wifi/autowifi/Scanner;)V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0

    .line 1
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

.method public onPnoNetworkFound([Landroid/net/wifi/ScanResult;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner$NetworkPnoScanListener;->this$0:Lcom/samsung/android/server/wifi/autowifi/Scanner;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/Scanner;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/autowifi/Scanner;)Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner$NetworkPnoScanListener;->this$0:Lcom/samsung/android/server/wifi/autowifi/Scanner;

    .line 8
    .line 9
    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/Scanner;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/autowifi/Scanner;)Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public onResults([Landroid/net/wifi/WifiScanner$ScanData;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .line 1
    return-void
.end method
