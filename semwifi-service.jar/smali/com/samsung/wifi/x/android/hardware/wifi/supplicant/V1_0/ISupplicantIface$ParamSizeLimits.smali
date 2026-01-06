.class public final Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface$ParamSizeLimits;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ParamSizeLimits"
.end annotation


# static fields
.field public static final WPS_DEVICE_NAME_MAX_LEN:I = 0x20

.field public static final WPS_MANUFACTURER_MAX_LEN:I = 0x40

.field public static final WPS_MODEL_NAME_MAX_LEN:I = 0x20

.field public static final WPS_MODEL_NUMBER_MAX_LEN:I = 0x20

.field public static final WPS_SERIAL_NUMBER_MAX_LEN:I = 0x20


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    and-int/lit8 v1, p0, 0x20

    .line 7
    .line 8
    const/16 v2, 0x20

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    const-string v3, "WPS_DEVICE_NAME_MAX_LEN"

    .line 13
    .line 14
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move v3, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v3, 0x0

    .line 20
    :goto_0
    and-int/lit8 v4, p0, 0x40

    .line 21
    .line 22
    const/16 v5, 0x40

    .line 23
    .line 24
    if-ne v4, v5, :cond_1

    .line 25
    .line 26
    const-string v4, "WPS_MANUFACTURER_MAX_LEN"

    .line 27
    .line 28
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    or-int/lit8 v3, v3, 0x40

    .line 32
    .line 33
    :cond_1
    if-ne v1, v2, :cond_2

    .line 34
    .line 35
    const-string v4, "WPS_MODEL_NAME_MAX_LEN"

    .line 36
    .line 37
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    or-int/lit8 v3, v3, 0x20

    .line 41
    .line 42
    :cond_2
    if-ne v1, v2, :cond_3

    .line 43
    .line 44
    const-string v4, "WPS_MODEL_NUMBER_MAX_LEN"

    .line 45
    .line 46
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    or-int/lit8 v3, v3, 0x20

    .line 50
    .line 51
    :cond_3
    if-ne v1, v2, :cond_4

    .line 52
    .line 53
    const-string v1, "WPS_SERIAL_NUMBER_MAX_LEN"

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    or-int/lit8 v3, v3, 0x20

    .line 59
    .line 60
    :cond_4
    if-eq p0, v3, :cond_5

    .line 61
    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v2, "0x"

    .line 65
    .line 66
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    not-int v2, v3

    .line 70
    and-int/2addr p0, v2

    .line 71
    invoke-static {p0, v1, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/util/ArrayList;)V

    .line 72
    .line 73
    .line 74
    :cond_5
    const-string p0, " | "

    .line 75
    .line 76
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    if-ne p0, v0, :cond_0

    .line 4
    .line 5
    const-string p0, "WPS_DEVICE_NAME_MAX_LEN"

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const/16 v1, 0x40

    .line 9
    .line 10
    if-ne p0, v1, :cond_1

    .line 11
    .line 12
    const-string p0, "WPS_MANUFACTURER_MAX_LEN"

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_1
    if-ne p0, v0, :cond_2

    .line 16
    .line 17
    const-string p0, "WPS_MODEL_NAME_MAX_LEN"

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_2
    if-ne p0, v0, :cond_3

    .line 21
    .line 22
    const-string p0, "WPS_MODEL_NUMBER_MAX_LEN"

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_3
    if-ne p0, v0, :cond_4

    .line 26
    .line 27
    const-string p0, "WPS_SERIAL_NUMBER_MAX_LEN"

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v1, "0x"

    .line 33
    .line 34
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v0, p0}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method
