.class public final synthetic Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityDiscoveryManagerImpl$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;ILcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityDiscoveryManagerImpl$1$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;

    .line 5
    .line 6
    iput p2, p0, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityDiscoveryManagerImpl$1$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityDiscoveryManagerImpl$1$$ExternalSyntheticLambda0;->f$2:Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityDiscoveryManagerImpl$1$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;

    .line 2
    .line 3
    iget v1, p0, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityDiscoveryManagerImpl$1$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    .line 5
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityDiscoveryManagerImpl$1$$ExternalSyntheticLambda0;->f$2:Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;

    .line 6
    .line 7
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/mcf/continuity/api/ContinuityMyDeviceDiscoveryManager$DiscoveryListener;->onDiscovered(ILcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
