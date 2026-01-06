.class public final Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$WpsDevPasswordId;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WpsDevPasswordId"
.end annotation


# static fields
.field public static final DEFAULT:S = 0x0s

.field public static final MACHINE_SPECIFIED:S = 0x2s

.field public static final NFC_CONNECTION_HANDOVER:S = 0x7s

.field public static final P2PS_DEFAULT:S = 0x8s

.field public static final PUSHBUTTON:S = 0x4s

.field public static final REGISTRAR_SPECIFIED:S = 0x5s

.field public static final REKEY:S = 0x3s

.field public static final USER_SPECIFIED:S = 0x1s


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

.method public static final dumpBitfield(S)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "DEFAULT"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IfaceType$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    and-int/lit8 v1, p0, 0x1

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    const-string v1, "USER_SPECIFIED"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    int-to-short v1, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    :goto_0
    and-int/lit8 v2, p0, 0x2

    .line 21
    .line 22
    const/4 v3, 0x2

    .line 23
    if-ne v2, v3, :cond_1

    .line 24
    .line 25
    const-string v2, "MACHINE_SPECIFIED"

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    or-int/lit8 v1, v1, 0x2

    .line 31
    .line 32
    int-to-short v1, v1

    .line 33
    :cond_1
    and-int/lit8 v2, p0, 0x3

    .line 34
    .line 35
    const/4 v3, 0x3

    .line 36
    if-ne v2, v3, :cond_2

    .line 37
    .line 38
    const-string v2, "REKEY"

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    or-int/lit8 v1, v1, 0x3

    .line 44
    .line 45
    int-to-short v1, v1

    .line 46
    :cond_2
    and-int/lit8 v2, p0, 0x4

    .line 47
    .line 48
    const/4 v3, 0x4

    .line 49
    if-ne v2, v3, :cond_3

    .line 50
    .line 51
    const-string v2, "PUSHBUTTON"

    .line 52
    .line 53
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    or-int/lit8 v1, v1, 0x4

    .line 57
    .line 58
    int-to-short v1, v1

    .line 59
    :cond_3
    and-int/lit8 v2, p0, 0x5

    .line 60
    .line 61
    const/4 v3, 0x5

    .line 62
    if-ne v2, v3, :cond_4

    .line 63
    .line 64
    const-string v2, "REGISTRAR_SPECIFIED"

    .line 65
    .line 66
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    or-int/lit8 v1, v1, 0x5

    .line 70
    .line 71
    int-to-short v1, v1

    .line 72
    :cond_4
    and-int/lit8 v2, p0, 0x7

    .line 73
    .line 74
    const/4 v3, 0x7

    .line 75
    if-ne v2, v3, :cond_5

    .line 76
    .line 77
    const-string v2, "NFC_CONNECTION_HANDOVER"

    .line 78
    .line 79
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    or-int/lit8 v1, v1, 0x7

    .line 83
    .line 84
    int-to-short v1, v1

    .line 85
    :cond_5
    and-int/lit8 v2, p0, 0x8

    .line 86
    .line 87
    const/16 v3, 0x8

    .line 88
    .line 89
    if-ne v2, v3, :cond_6

    .line 90
    .line 91
    const-string v2, "P2PS_DEFAULT"

    .line 92
    .line 93
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    or-int/lit8 v1, v1, 0x8

    .line 97
    .line 98
    int-to-short v1, v1

    .line 99
    :cond_6
    if-eq p0, v1, :cond_7

    .line 100
    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    const-string v3, "0x"

    .line 104
    .line 105
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    not-int v1, v1

    .line 109
    and-int/2addr p0, v1

    .line 110
    int-to-short p0, p0

    .line 111
    invoke-static {p0}, Ljava/lang/Short;->toUnsignedInt(S)I

    .line 112
    .line 113
    .line 114
    move-result p0

    .line 115
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    :cond_7
    const-string p0, " | "

    .line 130
    .line 131
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    return-object p0
.end method

.method public static final toString(S)Ljava/lang/String;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-string p0, "DEFAULT"

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    if-ne p0, v0, :cond_1

    .line 8
    .line 9
    const-string p0, "USER_SPECIFIED"

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_1
    const/4 v0, 0x2

    .line 13
    if-ne p0, v0, :cond_2

    .line 14
    .line 15
    const-string p0, "MACHINE_SPECIFIED"

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_2
    const/4 v0, 0x3

    .line 19
    if-ne p0, v0, :cond_3

    .line 20
    .line 21
    const-string p0, "REKEY"

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_3
    const/4 v0, 0x4

    .line 25
    if-ne p0, v0, :cond_4

    .line 26
    .line 27
    const-string p0, "PUSHBUTTON"

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_4
    const/4 v0, 0x5

    .line 31
    if-ne p0, v0, :cond_5

    .line 32
    .line 33
    const-string p0, "REGISTRAR_SPECIFIED"

    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_5
    const/4 v0, 0x7

    .line 37
    if-ne p0, v0, :cond_6

    .line 38
    .line 39
    const-string p0, "NFC_CONNECTION_HANDOVER"

    .line 40
    .line 41
    return-object p0

    .line 42
    :cond_6
    const/16 v0, 0x8

    .line 43
    .line 44
    if-ne p0, v0, :cond_7

    .line 45
    .line 46
    const-string p0, "P2PS_DEFAULT"

    .line 47
    .line 48
    return-object p0

    .line 49
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v1, "0x"

    .line 52
    .line 53
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-static {p0}, Ljava/lang/Short;->toUnsignedInt(S)I

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    return-object p0
.end method
