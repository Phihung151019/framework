.class Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner$1;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;->autohotspotWifiScanConnect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner$1;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner$1;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;->-$$Nest$fgetTAG(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "onFailure : "

    .line 8
    .line 9
    invoke-static {v0, p1, p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onSuccess()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner$1;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;->-$$Nest$fgetTAG(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "onSuccess"

    .line 8
    .line 9
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void
.end method
