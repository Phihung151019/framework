.class public final synthetic Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifi$Proxy$$ExternalSyntheticOutline0;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# direct methods
.method public static m(ILjava/lang/String;)Landroid/os/HwParcel;
    .locals 1

    .line 1
    new-instance v0, Landroid/os/HwParcel;

    .line 2
    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    return-object v0
.end method

.method public static m(Landroid/os/HwParcel;Landroid/os/IHwBinder;)Landroid/os/HwParcel;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 6
    new-instance p0, Landroid/os/HwParcel;

    .line 7
    invoke-direct {p0}, Landroid/os/HwParcel;-><init>()V

    return-object p0
.end method

.method public static m(Ljava/lang/String;)Landroid/os/HwParcel;
    .locals 1

    .line 8
    new-instance v0, Landroid/os/HwParcel;

    .line 9
    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 10
    invoke-virtual {v0, p0}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    return-object v0
.end method

.method public static m(Ljava/lang/String;Landroid/os/NativeHandle;Ljava/util/ArrayList;)Landroid/os/HwParcel;
    .locals 1

    .line 11
    new-instance v0, Landroid/os/HwParcel;

    .line 12
    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 13
    invoke-virtual {v0, p0}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeNativeHandle(Landroid/os/NativeHandle;)V

    .line 15
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    return-object v0
.end method
