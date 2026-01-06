.class public final synthetic Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant$Stub$$ExternalSyntheticOutline0;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# direct methods
.method public static m(Landroid/os/HwParcel;ILcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Landroid/os/HwParcel;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/os/HwParcel;->send()V

    .line 8
    .line 9
    .line 10
    return-void
.end method
