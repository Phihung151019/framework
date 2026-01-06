.class Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub$9;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$getClientListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor <init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;Landroid/os/HwParcel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub$9;->val$_hidl_reply:Landroid/os/HwParcel;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onValues(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;",
            "Ljava/util/ArrayList<",
            "[B>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub$9;->val$_hidl_reply:Landroid/os/HwParcel;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub$9;->val$_hidl_reply:Landroid/os/HwParcel;

    .line 8
    .line 9
    const/16 v2, 0x10

    .line 10
    .line 11
    invoke-static {p1, v0, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Proxy$$ExternalSyntheticOutline0;->m(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Landroid/os/HwParcel;I)Landroid/os/HwBlob;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const-wide/16 v2, 0x8

    .line 20
    .line 21
    invoke-virtual {p1, v2, v3, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 22
    .line 23
    .line 24
    const-wide/16 v2, 0xc

    .line 25
    .line 26
    invoke-virtual {p1, v2, v3, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 27
    .line 28
    .line 29
    new-instance v2, Landroid/os/HwBlob;

    .line 30
    .line 31
    mul-int/lit8 v3, v0, 0x6

    .line 32
    .line 33
    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 34
    .line 35
    .line 36
    :goto_0
    if-ge v1, v0, :cond_1

    .line 37
    .line 38
    mul-int/lit8 v3, v1, 0x6

    .line 39
    .line 40
    int-to-long v3, v3

    .line 41
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    check-cast v5, [B

    .line 46
    .line 47
    if-eqz v5, :cond_0

    .line 48
    .line 49
    array-length v6, v5

    .line 50
    const/4 v7, 0x6

    .line 51
    if-ne v6, v7, :cond_0

    .line 52
    .line 53
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 54
    .line 55
    .line 56
    add-int/lit8 v1, v1, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 60
    .line 61
    const-string p1, "Array element is not of the expected length"

    .line 62
    .line 63
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p0

    .line 67
    :cond_1
    const-wide/16 v0, 0x0

    .line 68
    .line 69
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 70
    .line 71
    .line 72
    iget-object p2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub$9;->val$_hidl_reply:Landroid/os/HwParcel;

    .line 73
    .line 74
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 75
    .line 76
    .line 77
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub$9;->val$_hidl_reply:Landroid/os/HwParcel;

    .line 78
    .line 79
    invoke-virtual {p0}, Landroid/os/HwParcel;->send()V

    .line 80
    .line 81
    .line 82
    return-void
.end method
