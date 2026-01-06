.class Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController$1;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;Lcom/samsung/android/server/wifi/SemWifiInjector;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getScpmConfigurationName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "wifi-enhanced-feature"

    .line 2
    .line 3
    return-object p0
.end method

.method public onScpmPolicyUpdated(Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;)V
    .locals 2

    .line 1
    const-string v0, "SemWifiEnhancedFeatureController"

    .line 2
    .line 3
    const-string v1, "onScpmPolicyUpdated"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->-$$Nest$fgetmFeatureStateHandler(Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;)Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController$FeatureStateHandler;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;

    .line 15
    .line 16
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->-$$Nest$fgetmFeatureStateHandler(Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;)Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController$FeatureStateHandler;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-static {p0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public onScpmRegistered(Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;)V
    .locals 2

    .line 1
    const-string v0, "SemWifiEnhancedFeatureController"

    .line 2
    .line 3
    const-string v1, "onScpmRegistered"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->-$$Nest$fgetmFeatureStateHandler(Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;)Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController$FeatureStateHandler;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;

    .line 15
    .line 16
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->-$$Nest$fgetmFeatureStateHandler(Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;)Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController$FeatureStateHandler;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-static {p0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 26
    .line 27
    .line 28
    return-void
.end method
