.class final Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityDiscoveryManagerImpl$1;
.super Lcom/samsung/android/mcf/continuity/api/ContinuityMyDeviceDiscoveryManager$DiscoveryListener;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# instance fields
.field final synthetic val$discoveryListener:Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityDiscoveryManagerImpl$1;->val$discoveryListener:Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/api/ContinuityMyDeviceDiscoveryManager$DiscoveryListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDiscovered(ILcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityDiscoveryManagerImpl$1$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityDiscoveryManagerImpl$1;->val$discoveryListener:Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;

    .line 4
    .line 5
    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityDiscoveryManagerImpl$1$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;ILcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnCallback(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
