.class public final Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$ParamSizeLimits;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ParamSizeLimits"
.end annotation


# static fields
.field public static final PSK_PASSPHRASE_MAX_LEN_IN_BYTES:I = 0x3f

.field public static final PSK_PASSPHRASE_MIN_LEN_IN_BYTES:I = 0x8

.field public static final SSID_MAX_LEN_IN_BYTES:I = 0x20

.field public static final WEP104_KEY_LEN_IN_BYTES:I = 0xd

.field public static final WEP40_KEY_LEN_IN_BYTES:I = 0x5

.field public static final WEP_KEYS_MAX_NUM:I = 0x4


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
    .locals 4

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
    const-string v1, "SSID_MAX_LEN_IN_BYTES"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v2, 0x0

    .line 19
    :goto_0
    and-int/lit8 v1, p0, 0x8

    .line 20
    .line 21
    const/16 v3, 0x8

    .line 22
    .line 23
    if-ne v1, v3, :cond_1

    .line 24
    .line 25
    const-string v1, "PSK_PASSPHRASE_MIN_LEN_IN_BYTES"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    or-int/lit8 v2, v2, 0x8

    .line 31
    .line 32
    :cond_1
    and-int/lit8 v1, p0, 0x3f

    .line 33
    .line 34
    const/16 v3, 0x3f

    .line 35
    .line 36
    if-ne v1, v3, :cond_2

    .line 37
    .line 38
    const-string v1, "PSK_PASSPHRASE_MAX_LEN_IN_BYTES"

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move v2, v3

    .line 44
    :cond_2
    and-int/lit8 v1, p0, 0x4

    .line 45
    .line 46
    const/4 v3, 0x4

    .line 47
    if-ne v1, v3, :cond_3

    .line 48
    .line 49
    const-string v1, "WEP_KEYS_MAX_NUM"

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    or-int/lit8 v2, v2, 0x4

    .line 55
    .line 56
    :cond_3
    and-int/lit8 v1, p0, 0x5

    .line 57
    .line 58
    const/4 v3, 0x5

    .line 59
    if-ne v1, v3, :cond_4

    .line 60
    .line 61
    const-string v1, "WEP40_KEY_LEN_IN_BYTES"

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    or-int/lit8 v2, v2, 0x5

    .line 67
    .line 68
    :cond_4
    and-int/lit8 v1, p0, 0xd

    .line 69
    .line 70
    const/16 v3, 0xd

    .line 71
    .line 72
    if-ne v1, v3, :cond_5

    .line 73
    .line 74
    const-string v1, "WEP104_KEY_LEN_IN_BYTES"

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    or-int/lit8 v2, v2, 0xd

    .line 80
    .line 81
    :cond_5
    if-eq p0, v2, :cond_6

    .line 82
    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string v3, "0x"

    .line 86
    .line 87
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    not-int v2, v2

    .line 91
    and-int/2addr p0, v2

    .line 92
    invoke-static {p0, v1, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/util/ArrayList;)V

    .line 93
    .line 94
    .line 95
    :cond_6
    const-string p0, " | "

    .line 96
    .line 97
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
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
    const-string p0, "SSID_MAX_LEN_IN_BYTES"

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const/16 v0, 0x8

    .line 9
    .line 10
    if-ne p0, v0, :cond_1

    .line 11
    .line 12
    const-string p0, "PSK_PASSPHRASE_MIN_LEN_IN_BYTES"

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_1
    const/16 v0, 0x3f

    .line 16
    .line 17
    if-ne p0, v0, :cond_2

    .line 18
    .line 19
    const-string p0, "PSK_PASSPHRASE_MAX_LEN_IN_BYTES"

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_2
    const/4 v0, 0x4

    .line 23
    if-ne p0, v0, :cond_3

    .line 24
    .line 25
    const-string p0, "WEP_KEYS_MAX_NUM"

    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_3
    const/4 v0, 0x5

    .line 29
    if-ne p0, v0, :cond_4

    .line 30
    .line 31
    const-string p0, "WEP40_KEY_LEN_IN_BYTES"

    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_4
    const/16 v0, 0xd

    .line 35
    .line 36
    if-ne p0, v0, :cond_5

    .line 37
    .line 38
    const-string p0, "WEP104_KEY_LEN_IN_BYTES"

    .line 39
    .line 40
    return-object p0

    .line 41
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v1, "0x"

    .line 44
    .line 45
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v0, p0}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method
