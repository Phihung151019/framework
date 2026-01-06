.class public interface abstract Lcom/samsung/android/mcf/continuity/api/ContinuityMyDeviceDiscoveryManager;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/mcf/continuity/api/ContinuityAbstractDiscoveryManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/continuity/api/ContinuityMyDeviceDiscoveryManager$DiscoveryListener;
    }
.end annotation


# virtual methods
.method public abstract getContinuitySimpleMessageManager()Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySimpleMessageManagerImpl;
.end method

.method public abstract getNearbyMyDevices()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;",
            ">;"
        }
    .end annotation
.end method

.method public abstract startAdvertisement()V
.end method

.method public abstract startDiscovery(Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;)Z
.end method

.method public abstract stopAdvertisement()V
.end method

.method public abstract stopDiscovery()Z
.end method
