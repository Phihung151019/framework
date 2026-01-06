.class Lcom/samsung/android/server/wifi/wcm/IccManager$5;
.super Landroid/database/ContentObserver;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/wcm/IccManager;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/wcm/IccManager;Landroid/os/Handler;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$5;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

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
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$5;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/wcm/IccManager;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$5;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/wcm/IccManager;)Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "wifi_intelligent_connection_control_enabled"

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x1

    .line 21
    if-ne v0, v1, :cond_0

    .line 22
    .line 23
    move v3, v1

    .line 24
    :cond_0
    invoke-static {p1, v3}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$fputisEnabled(Lcom/samsung/android/server/wifi/wcm/IccManager;Z)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$5;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$fgetisEnabled(Lcom/samsung/android/server/wifi/wcm/IccManager;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$5;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 36
    .line 37
    invoke-static {p1}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$fgetmPreScanResultProcessor(Lcom/samsung/android/server/wifi/wcm/IccManager;)Lcom/samsung/android/server/wifi/SemPreScanResultProcessor;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$5;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$fgethookCallback(Lcom/samsung/android/server/wifi/wcm/IccManager;)Lcom/samsung/android/server/wifi/SemPreScanResultProcessor$HookCallback;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/SemPreScanResultProcessor;->registerHookCallback(Lcom/samsung/android/server/wifi/SemPreScanResultProcessor$HookCallback;)Z

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$5;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 52
    .line 53
    invoke-static {p1}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$fgetmPreScanResultProcessor(Lcom/samsung/android/server/wifi/wcm/IccManager;)Lcom/samsung/android/server/wifi/SemPreScanResultProcessor;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$5;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 58
    .line 59
    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$fgethookCallback(Lcom/samsung/android/server/wifi/wcm/IccManager;)Lcom/samsung/android/server/wifi/SemPreScanResultProcessor$HookCallback;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/SemPreScanResultProcessor;->unregisterHookCallback(Lcom/samsung/android/server/wifi/SemPreScanResultProcessor$HookCallback;)Z

    .line 64
    .line 65
    .line 66
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$5;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 67
    .line 68
    invoke-static {p0}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$fgetisEnabled(Lcom/samsung/android/server/wifi/wcm/IccManager;)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v1, "setting is changed: "

    .line 75
    .line 76
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wcm/IccManager;->addEvent(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method
