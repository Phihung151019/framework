.class public final synthetic Lcom/samsung/android/server/wifi/db/WifiControlMonitor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiStateListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/db/WifiControlMonitor;

.field public final synthetic f$1:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/db/WifiControlMonitor;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/wifi/db/WifiControlMonitor$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/wifi/db/WifiControlMonitor;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/server/wifi/db/WifiControlMonitor$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onWifiStateChanged(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/db/WifiControlMonitor$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/wifi/db/WifiControlMonitor;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/db/WifiControlMonitor$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 4
    .line 5
    invoke-static {v0, p0, p1, p2}, Lcom/samsung/android/server/wifi/db/WifiControlMonitor;->$r8$lambda$0gHKucH2OtOMGW3d6h_0QAbuIHs(Lcom/samsung/android/server/wifi/db/WifiControlMonitor;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;II)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
