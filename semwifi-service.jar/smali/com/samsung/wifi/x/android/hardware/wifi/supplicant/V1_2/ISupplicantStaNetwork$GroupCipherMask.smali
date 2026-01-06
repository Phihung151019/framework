.class public final Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$GroupCipherMask;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GroupCipherMask"
.end annotation


# static fields
.field public static final CCMP:I = 0x10

.field public static final GCMP_256:I = 0x100

.field public static final GTK_NOT_USED:I = 0x4000

.field public static final TKIP:I = 0x8

.field public static final WEP104:I = 0x4

.field public static final WEP40:I = 0x2


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
    and-int/lit8 v1, p0, 0x2

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    const-string v1, "WEP40"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v2, 0x0

    .line 18
    :goto_0
    and-int/lit8 v1, p0, 0x4

    .line 19
    .line 20
    const/4 v3, 0x4

    .line 21
    if-ne v1, v3, :cond_1

    .line 22
    .line 23
    const-string v1, "WEP104"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    or-int/lit8 v2, v2, 0x4

    .line 29
    .line 30
    :cond_1
    and-int/lit8 v1, p0, 0x8

    .line 31
    .line 32
    const/16 v3, 0x8

    .line 33
    .line 34
    if-ne v1, v3, :cond_2

    .line 35
    .line 36
    const-string v1, "TKIP"

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    or-int/lit8 v2, v2, 0x8

    .line 42
    .line 43
    :cond_2
    and-int/lit8 v1, p0, 0x10

    .line 44
    .line 45
    const/16 v3, 0x10

    .line 46
    .line 47
    if-ne v1, v3, :cond_3

    .line 48
    .line 49
    const-string v1, "CCMP"

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    or-int/lit8 v2, v2, 0x10

    .line 55
    .line 56
    :cond_3
    and-int/lit16 v1, p0, 0x4000

    .line 57
    .line 58
    const/16 v3, 0x4000

    .line 59
    .line 60
    if-ne v1, v3, :cond_4

    .line 61
    .line 62
    const-string v1, "GTK_NOT_USED"

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    or-int/lit16 v2, v2, 0x4000

    .line 68
    .line 69
    :cond_4
    and-int/lit16 v1, p0, 0x100

    .line 70
    .line 71
    const/16 v3, 0x100

    .line 72
    .line 73
    if-ne v1, v3, :cond_5

    .line 74
    .line 75
    const-string v1, "GCMP_256"

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    or-int/lit16 v2, v2, 0x100

    .line 81
    .line 82
    :cond_5
    if-eq p0, v2, :cond_6

    .line 83
    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string v3, "0x"

    .line 87
    .line 88
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    not-int v2, v2

    .line 92
    and-int/2addr p0, v2

    .line 93
    invoke-static {p0, v1, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/util/ArrayList;)V

    .line 94
    .line 95
    .line 96
    :cond_6
    const-string p0, " | "

    .line 97
    .line 98
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    if-ne p0, v0, :cond_0

    .line 3
    .line 4
    const-string p0, "WEP40"

    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_0
    const/4 v0, 0x4

    .line 8
    if-ne p0, v0, :cond_1

    .line 9
    .line 10
    const-string p0, "WEP104"

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_1
    const/16 v0, 0x8

    .line 14
    .line 15
    if-ne p0, v0, :cond_2

    .line 16
    .line 17
    const-string p0, "TKIP"

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_2
    const/16 v0, 0x10

    .line 21
    .line 22
    if-ne p0, v0, :cond_3

    .line 23
    .line 24
    const-string p0, "CCMP"

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_3
    const/16 v0, 0x4000

    .line 28
    .line 29
    if-ne p0, v0, :cond_4

    .line 30
    .line 31
    const-string p0, "GTK_NOT_USED"

    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_4
    const/16 v0, 0x100

    .line 35
    .line 36
    if-ne p0, v0, :cond_5

    .line 37
    .line 38
    const-string p0, "GCMP_256"

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
