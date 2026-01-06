.class Lcom/samsung/android/server/wifi/SemWifiServiceImpl$2;
.super Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$OpenNetworkQosCallback;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->handleBootCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$OpenNetworkQosCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onNoInternetStatusChanged(Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->-$$Nest$fgetmProfileShare(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 p1, 0x1

    .line 8
    const/4 v0, 0x0

    .line 9
    const-string v1, "internet"

    .line 10
    .line 11
    invoke-virtual {p0, v1, p1, v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->updateQoSData(Ljava/lang/String;ZZ)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onQualityScoreChanged()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->-$$Nest$fgetmProfileShare(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x0

    .line 8
    const/4 v1, 0x1

    .line 9
    const-string v2, "score"

    .line 10
    .line 11
    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->updateQoSData(Ljava/lang/String;ZZ)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
