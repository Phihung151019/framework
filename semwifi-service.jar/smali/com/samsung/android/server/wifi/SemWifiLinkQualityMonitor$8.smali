.class Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$8;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;


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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$8;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public updatedServiceStats([IIIF)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$8;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 2
    .line 3
    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetconnected(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    const/4 p2, 0x4

    .line 14
    aget p2, p1, p2

    .line 15
    .line 16
    const/4 p3, 0x1

    .line 17
    if-ne p2, p3, :cond_0

    .line 18
    .line 19
    const/4 p2, 0x6

    .line 20
    aget p1, p1, p2

    .line 21
    .line 22
    const/4 p2, 0x2

    .line 23
    if-ne p1, p2, :cond_0

    .line 24
    .line 25
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$8;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 26
    .line 27
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetvoiceCallDetected(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$8;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 36
    .line 37
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetvoiceCallDetected(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    const/4 p1, 0x0

    .line 42
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 43
    .line 44
    .line 45
    return-void
.end method
