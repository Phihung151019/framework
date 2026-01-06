.class public final synthetic Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Proxy$$ExternalSyntheticOutline0;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# direct methods
.method public static m(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Landroid/os/HwParcel;I)Landroid/os/HwBlob;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2
    new-instance p0, Landroid/os/HwBlob;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/HwBlob;-><init>(I)V

    return-object p0
.end method

.method public static m(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/os/HwParcel;
    .locals 1

    .line 4
    new-instance v0, Landroid/os/HwParcel;

    .line 5
    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 6
    invoke-virtual {v0, p0}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    return-object v0
.end method
