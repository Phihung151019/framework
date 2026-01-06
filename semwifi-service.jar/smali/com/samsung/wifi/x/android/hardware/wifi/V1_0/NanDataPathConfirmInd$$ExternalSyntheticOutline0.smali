.class public final synthetic Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd$$ExternalSyntheticOutline0;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# direct methods
.method public static m(Ljava/lang/Byte;Landroid/os/HwBlob;JII)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    .line 2
    invoke-virtual {p1, p2, p3, p0}, Landroid/os/HwBlob;->putInt8(JB)V

    add-int/2addr p4, p5

    return p4
.end method

.method public static m(Landroid/os/HwBlob;JZI)Landroid/os/HwBlob;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 4
    new-instance p0, Landroid/os/HwBlob;

    .line 5
    invoke-direct {p0, p4}, Landroid/os/HwBlob;-><init>(I)V

    return-object p0
.end method

.method public static m([BLjava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
