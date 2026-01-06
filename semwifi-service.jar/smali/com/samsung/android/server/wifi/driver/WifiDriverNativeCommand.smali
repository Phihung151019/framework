.class public interface abstract Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# virtual methods
.method public abstract getChipsetVendorName()Ljava/lang/String;
.end method

.method public abstract getVendorConnFileInfo(I)Ljava/lang/String;
.end method

.method public abstract getVendorProperty(I)Ljava/lang/String;
.end method

.method public abstract removeVendorConnFile(I)Z
.end method

.method public abstract removeVendorLogFiles()Z
.end method

.method public abstract setVendorProperty(ILjava/lang/String;)Z
.end method

.method public abstract updateVendorConnFile(I)Z
.end method

.method public abstract writeVendorConnFile(ILjava/lang/String;)Z
.end method
