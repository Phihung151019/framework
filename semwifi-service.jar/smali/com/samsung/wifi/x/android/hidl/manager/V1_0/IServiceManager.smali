.class public interface abstract Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Landroid/os/IHwInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager$Proxy;
    }
.end annotation


# direct methods
.method public static getService()Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const-string v0, "default"

    .line 2
    .line 3
    const-string v1, "android.hidl.manager@1.0::IServiceManager"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-interface {v0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    instance-of v3, v2, Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;

    .line 19
    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    check-cast v2, Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;

    .line 23
    .line 24
    return-object v2

    .line 25
    :cond_1
    new-instance v2, Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager$Proxy;

    .line 26
    .line 27
    invoke-direct {v2, v0}, Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager$Proxy;-><init>(Landroid/os/IHwBinder;)V

    .line 28
    .line 29
    .line 30
    :try_start_0
    invoke-virtual {v2}, Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager$Proxy;->interfaceChain()Ljava/util/ArrayList;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    const/4 v4, 0x0

    .line 39
    :cond_2
    if-ge v4, v3, :cond_3

    .line 40
    .line 41
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    add-int/lit8 v4, v4, 0x1

    .line 46
    .line 47
    check-cast v5, Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    if-eqz v5, :cond_2

    .line 54
    .line 55
    return-object v2

    .line 56
    :catch_0
    :cond_3
    :goto_0
    const/4 v0, 0x0

    .line 57
    return-object v0
.end method


# virtual methods
.method public abstract getTransport(Ljava/lang/String;)B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract linkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerForNotifications(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceNotification;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
