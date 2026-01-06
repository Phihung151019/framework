.class public interface abstract Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiConfigurationChangedListener;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WifiConfigurationChangedListener"
.end annotation


# virtual methods
.method public abstract onConfiguredNetworksChanged(I)V
.end method

.method public onConfiguredNetworksChanged(ILandroid/net/wifi/WifiConfiguration;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiConfigurationChangedListener;->onConfiguredNetworksChanged(I)V

    return-void
.end method
