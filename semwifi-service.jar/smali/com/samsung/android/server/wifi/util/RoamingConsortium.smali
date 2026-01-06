.class public Lcom/samsung/android/server/wifi/util/RoamingConsortium;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field public static final BYTE_MASK:I = 0xff

.field public static final NIBBLE_MASK:I = 0xf


# instance fields
.field public anqpOICount:I

.field private roamingConsortiums:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/samsung/android/server/wifi/util/RoamingConsortium;->anqpOICount:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/samsung/android/server/wifi/util/RoamingConsortium;->roamingConsortiums:[J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public from(Landroid/net/wifi/ScanResult$InformationElement;)V
    .locals 9

    .line 1
    iget v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    .line 2
    .line 3
    const/16 v1, 0x6f

    .line 4
    .line 5
    if-ne v0, v1, :cond_6

    .line 6
    .line 7
    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 8
    .line 9
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    and-int/lit16 v1, v1, 0xff

    .line 24
    .line 25
    iput v1, p0, Lcom/samsung/android/server/wifi/util/RoamingConsortium;->anqpOICount:I

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    and-int/lit16 v2, v1, 0xff

    .line 32
    .line 33
    and-int/lit8 v1, v1, 0xf

    .line 34
    .line 35
    ushr-int/lit8 v2, v2, 0x4

    .line 36
    .line 37
    and-int/lit8 v2, v2, 0xf

    .line 38
    .line 39
    iget-object p1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 40
    .line 41
    array-length p1, p1

    .line 42
    const/4 v3, 0x2

    .line 43
    sub-int/2addr p1, v3

    .line 44
    sub-int/2addr p1, v1

    .line 45
    sub-int/2addr p1, v2

    .line 46
    const/4 v4, 0x0

    .line 47
    const/4 v5, 0x1

    .line 48
    if-lez v1, :cond_2

    .line 49
    .line 50
    if-lez v2, :cond_1

    .line 51
    .line 52
    if-lez p1, :cond_0

    .line 53
    .line 54
    const/4 v6, 0x3

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    move v6, v3

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    move v6, v5

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    move v6, v4

    .line 61
    :goto_0
    new-array v6, v6, [J

    .line 62
    .line 63
    iput-object v6, p0, Lcom/samsung/android/server/wifi/util/RoamingConsortium;->roamingConsortiums:[J

    .line 64
    .line 65
    if-lez v1, :cond_3

    .line 66
    .line 67
    array-length v7, v6

    .line 68
    if-lez v7, :cond_3

    .line 69
    .line 70
    sget-object v7, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 71
    .line 72
    invoke-static {v0, v7, v1}, Lcom/samsung/android/server/wifi/util/SemByteBufferReader;->readInteger(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;I)J

    .line 73
    .line 74
    .line 75
    move-result-wide v7

    .line 76
    aput-wide v7, v6, v4

    .line 77
    .line 78
    :cond_3
    if-lez v2, :cond_4

    .line 79
    .line 80
    iget-object v1, p0, Lcom/samsung/android/server/wifi/util/RoamingConsortium;->roamingConsortiums:[J

    .line 81
    .line 82
    array-length v4, v1

    .line 83
    if-le v4, v5, :cond_4

    .line 84
    .line 85
    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 86
    .line 87
    invoke-static {v0, v4, v2}, Lcom/samsung/android/server/wifi/util/SemByteBufferReader;->readInteger(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;I)J

    .line 88
    .line 89
    .line 90
    move-result-wide v6

    .line 91
    aput-wide v6, v1, v5

    .line 92
    .line 93
    :cond_4
    if-lez p1, :cond_5

    .line 94
    .line 95
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/RoamingConsortium;->roamingConsortiums:[J

    .line 96
    .line 97
    array-length v1, p0

    .line 98
    if-le v1, v3, :cond_5

    .line 99
    .line 100
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 101
    .line 102
    invoke-static {v0, v1, p1}, Lcom/samsung/android/server/wifi/util/SemByteBufferReader;->readInteger(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;I)J

    .line 103
    .line 104
    .line 105
    move-result-wide v0

    .line 106
    aput-wide v0, p0, v3

    .line 107
    .line 108
    :cond_5
    return-void

    .line 109
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 110
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    const-string v1, "Element id is not ROAMING_CONSORTIUM, : "

    .line 114
    .line 115
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iget p1, p1, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    .line 119
    .line 120
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw p0
.end method

.method public getRoamingConsortiums()[J
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/RoamingConsortium;->roamingConsortiums:[J

    .line 2
    .line 3
    return-object p0
.end method
