.class Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$2;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmIsSensorEnabled(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 14
    .line 15
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$munregisterSensorListener(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
