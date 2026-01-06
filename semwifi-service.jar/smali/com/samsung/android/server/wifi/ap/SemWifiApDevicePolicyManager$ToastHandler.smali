.class Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager$ToastHandler;
.super Landroid/os/Handler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ToastHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;Landroid/os/Looper;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager$ToastHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;

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
    .locals 2

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    if-eq p1, v0, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager$ToastHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;

    .line 12
    .line 13
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;)Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const p1, 0x10406f8

    .line 18
    .line 19
    .line 20
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager$ToastHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;

    .line 29
    .line 30
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;)Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const p1, 0x10404f3

    .line 35
    .line 36
    .line 37
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 42
    .line 43
    .line 44
    return-void
.end method
