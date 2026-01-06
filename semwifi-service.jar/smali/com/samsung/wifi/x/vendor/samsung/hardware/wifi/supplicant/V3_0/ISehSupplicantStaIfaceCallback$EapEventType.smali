.class public final Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaIfaceCallback$EapEventType;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaIfaceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EapEventType"
.end annotation


# static fields
.field public static final ANONYMOUS_IDENTITY_UPDATED:I = 0x1

.field public static final DEAUTH_8021X_AUTH_FAILED:I = 0x2

.field public static final EAP_FAILURE:I = 0x3

.field public static final ERROR_MESSAGE:I = 0x4

.field public static final LOGGING:I = 0x5

.field public static final NOTIFICATION:I = 0x7

.field public static final NO_CREDENTIALS:I = 0x6

.field public static final SUCCESS:I = 0x8

.field public static final TLS_ALERT:I = 0x9

.field public static final TLS_CERT_ERROR:I = 0xa

.field public static final TLS_HANDSHAKE_FAIL:I = 0xb


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
    and-int/lit8 v1, p0, 0x1

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    const-string v1, "ANONYMOUS_IDENTITY_UPDATED"

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
    and-int/lit8 v1, p0, 0x2

    .line 19
    .line 20
    const/4 v3, 0x2

    .line 21
    if-ne v1, v3, :cond_1

    .line 22
    .line 23
    const-string v1, "DEAUTH_8021X_AUTH_FAILED"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    or-int/lit8 v2, v2, 0x2

    .line 29
    .line 30
    :cond_1
    and-int/lit8 v1, p0, 0x3

    .line 31
    .line 32
    const/4 v3, 0x3

    .line 33
    if-ne v1, v3, :cond_2

    .line 34
    .line 35
    const-string v1, "EAP_FAILURE"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move v2, v3

    .line 41
    :cond_2
    and-int/lit8 v1, p0, 0x4

    .line 42
    .line 43
    const/4 v3, 0x4

    .line 44
    if-ne v1, v3, :cond_3

    .line 45
    .line 46
    const-string v1, "ERROR_MESSAGE"

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    or-int/lit8 v2, v2, 0x4

    .line 52
    .line 53
    :cond_3
    and-int/lit8 v1, p0, 0x5

    .line 54
    .line 55
    const/4 v3, 0x5

    .line 56
    if-ne v1, v3, :cond_4

    .line 57
    .line 58
    const-string v1, "LOGGING"

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    or-int/lit8 v2, v2, 0x5

    .line 64
    .line 65
    :cond_4
    and-int/lit8 v1, p0, 0x6

    .line 66
    .line 67
    const/4 v3, 0x6

    .line 68
    if-ne v1, v3, :cond_5

    .line 69
    .line 70
    const-string v1, "NO_CREDENTIALS"

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    or-int/lit8 v2, v2, 0x6

    .line 76
    .line 77
    :cond_5
    and-int/lit8 v1, p0, 0x7

    .line 78
    .line 79
    const/4 v3, 0x7

    .line 80
    if-ne v1, v3, :cond_6

    .line 81
    .line 82
    const-string v1, "NOTIFICATION"

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move v2, v3

    .line 88
    :cond_6
    and-int/lit8 v1, p0, 0x8

    .line 89
    .line 90
    const/16 v3, 0x8

    .line 91
    .line 92
    if-ne v1, v3, :cond_7

    .line 93
    .line 94
    const-string v1, "SUCCESS"

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    or-int/lit8 v2, v2, 0x8

    .line 100
    .line 101
    :cond_7
    and-int/lit8 v1, p0, 0x9

    .line 102
    .line 103
    const/16 v3, 0x9

    .line 104
    .line 105
    if-ne v1, v3, :cond_8

    .line 106
    .line 107
    const-string v1, "TLS_ALERT"

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    or-int/lit8 v2, v2, 0x9

    .line 113
    .line 114
    :cond_8
    and-int/lit8 v1, p0, 0xa

    .line 115
    .line 116
    const/16 v3, 0xa

    .line 117
    .line 118
    if-ne v1, v3, :cond_9

    .line 119
    .line 120
    const-string v1, "TLS_CERT_ERROR"

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    or-int/lit8 v2, v2, 0xa

    .line 126
    .line 127
    :cond_9
    and-int/lit8 v1, p0, 0xb

    .line 128
    .line 129
    const/16 v3, 0xb

    .line 130
    .line 131
    if-ne v1, v3, :cond_a

    .line 132
    .line 133
    const-string v1, "TLS_HANDSHAKE_FAIL"

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    or-int/lit8 v2, v2, 0xb

    .line 139
    .line 140
    :cond_a
    if-eq p0, v2, :cond_b

    .line 141
    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    const-string v3, "0x"

    .line 145
    .line 146
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    not-int v2, v2

    .line 150
    and-int/2addr p0, v2

    .line 151
    invoke-static {p0, v1, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/util/ArrayList;)V

    .line 152
    .line 153
    .line 154
    :cond_b
    const-string p0, " | "

    .line 155
    .line 156
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, v0, :cond_0

    .line 3
    .line 4
    const-string p0, "ANONYMOUS_IDENTITY_UPDATED"

    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_0
    const/4 v0, 0x2

    .line 8
    if-ne p0, v0, :cond_1

    .line 9
    .line 10
    const-string p0, "DEAUTH_8021X_AUTH_FAILED"

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_1
    const/4 v0, 0x3

    .line 14
    if-ne p0, v0, :cond_2

    .line 15
    .line 16
    const-string p0, "EAP_FAILURE"

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_2
    const/4 v0, 0x4

    .line 20
    if-ne p0, v0, :cond_3

    .line 21
    .line 22
    const-string p0, "ERROR_MESSAGE"

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_3
    const/4 v0, 0x5

    .line 26
    if-ne p0, v0, :cond_4

    .line 27
    .line 28
    const-string p0, "LOGGING"

    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_4
    const/4 v0, 0x6

    .line 32
    if-ne p0, v0, :cond_5

    .line 33
    .line 34
    const-string p0, "NO_CREDENTIALS"

    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_5
    const/4 v0, 0x7

    .line 38
    if-ne p0, v0, :cond_6

    .line 39
    .line 40
    const-string p0, "NOTIFICATION"

    .line 41
    .line 42
    return-object p0

    .line 43
    :cond_6
    const/16 v0, 0x8

    .line 44
    .line 45
    if-ne p0, v0, :cond_7

    .line 46
    .line 47
    const-string p0, "SUCCESS"

    .line 48
    .line 49
    return-object p0

    .line 50
    :cond_7
    const/16 v0, 0x9

    .line 51
    .line 52
    if-ne p0, v0, :cond_8

    .line 53
    .line 54
    const-string p0, "TLS_ALERT"

    .line 55
    .line 56
    return-object p0

    .line 57
    :cond_8
    const/16 v0, 0xa

    .line 58
    .line 59
    if-ne p0, v0, :cond_9

    .line 60
    .line 61
    const-string p0, "TLS_CERT_ERROR"

    .line 62
    .line 63
    return-object p0

    .line 64
    :cond_9
    const/16 v0, 0xb

    .line 65
    .line 66
    if-ne p0, v0, :cond_a

    .line 67
    .line 68
    const-string p0, "TLS_HANDSHAKE_FAIL"

    .line 69
    .line 70
    return-object p0

    .line 71
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string v1, "0x"

    .line 74
    .line 75
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-static {v0, p0}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    return-object p0
.end method
