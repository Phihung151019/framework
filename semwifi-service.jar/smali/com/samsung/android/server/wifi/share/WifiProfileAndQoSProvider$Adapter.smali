.class public interface abstract Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$Adapter;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Adapter"
.end annotation


# virtual methods
.method public abstract getApMacAddress()Ljava/lang/String;
.end method

.method public abstract getCurrentNetworkScore()[I
.end method

.method public abstract getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;
.end method
