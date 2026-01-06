.class Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$1;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$OnEleDetectInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;Landroid/net/wifi/WifiScanner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$1;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onEleDetect()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$1;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->-$$Nest$fputmGeomagneticEleState(Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;Z)V

    .line 5
    .line 6
    .line 7
    const-string p0, "SemWifiEleStateTracker"

    .line 8
    .line 9
    const-string v0, " GEO Ele TRUE"

    .line 10
    .line 11
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onEleNotDetect()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$1;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->-$$Nest$fputmGeomagneticEleState(Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;Z)V

    .line 5
    .line 6
    .line 7
    const-string p0, "SemWifiEleStateTracker"

    .line 8
    .line 9
    const-string v0, " GEO Ele FALSE"

    .line 10
    .line 11
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return-void
.end method
