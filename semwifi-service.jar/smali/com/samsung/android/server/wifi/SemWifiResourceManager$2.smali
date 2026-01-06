.class Lcom/samsung/android/server/wifi/SemWifiResourceManager$2;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController$SemWifiFeatureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiResourceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public featureUpdated([I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmWifiResourceHandler(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 8
    .line 9
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmWifiResourceHandler(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const/4 v1, 0x4

    .line 14
    invoke-static {p0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const-wide/16 v1, 0x0

    .line 19
    .line 20
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method
