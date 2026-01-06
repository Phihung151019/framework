.class Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$4;
.super Landroid/database/ContentObserver;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->registerContentObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;Landroid/os/Handler;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$4;->this$0:Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$4;->this$0:Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->-$$Nest$fgetmFrameworkFacade(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$4;->this$0:Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;)Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "sem_wifi_disable_scan_for_d2d"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-ne v0, v3, :cond_0

    .line 21
    .line 22
    move v0, v3

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->-$$Nest$fputmSetWifiScanAutoBlock(ZLcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;)V

    .line 26
    .line 27
    .line 28
    new-instance p1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v0, "onChange - mSetWifiScanAutoBlock: "

    .line 31
    .line 32
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$4;->this$0:Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->-$$Nest$fgetmSetWifiScanAutoBlock(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const-string v1, "SemWifiAwareStateManager"

    .line 42
    .line 43
    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$4;->this$0:Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;

    .line 47
    .line 48
    invoke-static {p1}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->-$$Nest$fgetmSetWifiScanAutoBlock(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-nez p1, :cond_1

    .line 53
    .line 54
    iget-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$4;->this$0:Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;

    .line 55
    .line 56
    invoke-static {p1}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->-$$Nest$fgetmCurrentNdpCount(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;)I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-lez p1, :cond_1

    .line 61
    .line 62
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$4;->this$0:Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;

    .line 63
    .line 64
    invoke-static {v3, p0}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->-$$Nest$msetLegacyScanningEnable(ZLcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;)V

    .line 65
    .line 66
    .line 67
    :cond_1
    return-void
.end method
