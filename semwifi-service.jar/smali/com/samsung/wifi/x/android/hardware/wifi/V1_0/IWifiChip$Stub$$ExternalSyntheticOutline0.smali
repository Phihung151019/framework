.class public final synthetic Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# direct methods
.method public static m(Ljava/lang/String;Ljava/lang/String;)Landroid/os/HwParcel;
    .locals 1

    .line 1
    new-instance v0, Landroid/os/HwParcel;

    .line 2
    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3
    invoke-virtual {v0, p0}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    return-object v0
.end method

.method public static m(Ljava/lang/String;Z)Landroid/os/HwParcel;
    .locals 1

    .line 5
    new-instance v0, Landroid/os/HwParcel;

    .line 6
    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 7
    invoke-virtual {v0, p0}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeBool(Z)V

    return-object v0
.end method

.method public static m(I)Ljava/lang/Integer;
    .locals 0

    .line 9
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 10
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    .line 11
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static m(Ljava/lang/StringBuilder;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static m(ILjava/lang/StringBuilder;Ljava/util/ArrayList;)V
    .locals 0

    .line 15
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    .line 16
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 18
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static m(Landroid/os/HwParcel;ILcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Landroid/os/HwParcel;)V
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 20
    invoke-virtual {p2, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 21
    invoke-virtual {p0}, Landroid/os/HwParcel;->send()V

    return-void
.end method
