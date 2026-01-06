.class Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$5;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpFingerprintManager$SemWifiApClientDhcpResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$5;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public OnClientDhcpResultUpdated(Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpFingerprintManager$SemWifiApClientDhcpDetail;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Message;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x1c

    .line 7
    .line 8
    iput v1, v0, Landroid/os/Message;->what:I

    .line 9
    .line 10
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$5;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 13
    .line 14
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->-$$Nest$fgetmSemWifiApDataUsageHandler(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method
