.class public interface abstract Lcom/samsung/android/server/wifi/halclient/ISemWifiHal;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# virtual methods
.method public abstract asBinder()Landroid/os/IBinder;
.end method

.method public abstract getChip(I)Lcom/samsung/android/server/wifi/halclient/SemWifiChip;
.end method

.method public abstract getChipIds()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getChipsetVendorName()Ljava/lang/String;
.end method

.method public abstract getInterfaceVersion()I
.end method

.method public abstract getProperty(I)Ljava/lang/String;
.end method

.method public abstract getTwtParameters()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract initialize()V
.end method

.method public abstract invalidate()V
.end method

.method public abstract isInitializationComplete()Z
.end method

.method public abstract isStarted()Z
.end method

.method public abstract isSupported()Z
.end method

.method public abstract readFile(I)Ljava/lang/String;
.end method

.method public abstract registerEventCallback(Lcom/samsung/android/server/wifi/halclient/SemWifiHal$Callback;)Z
.end method

.method public abstract removeFile(I)Z
.end method

.method public abstract removeLogFiles()Z
.end method

.method public abstract setProperty(ILjava/lang/String;)Z
.end method

.method public abstract start()I
.end method

.method public abstract updateFile(I)Z
.end method

.method public abstract writeFile(ILjava/lang/String;)Z
.end method
