.class Lcom/samsung/android/server/wifi/wcm/IccManager$4;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController$SemWifiFeatureCallback;


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
.method constructor <init>(Lcom/samsung/android/server/wifi/wcm/IccManager;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$4;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

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
    const/16 v0, 0x9

    .line 2
    .line 3
    aget p1, p1, v0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$4;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/wcm/IccManager;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$4;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/wcm/IccManager;)Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "wifi_intelligent_connection_control_enabled"

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2, p1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->setIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$4;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 23
    .line 24
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-string v0, "scpm value changed: %d"

    .line 33
    .line 34
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wcm/IccManager;->addEvent(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
