.class public Lcom/samsung/android/server/wifi/wcm/WcmIEUtil;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$DefragmentElement;,
        Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;,
        Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$HSRelease;
    }
.end annotation


# static fields
.field private static final BYTE_MASK:I = 0xff

.field private static final DBG:Z = false

.field private static final NIBBLE_MASK:I = 0xf

.field private static final SHORT_MASK:I = 0xffff

.field private static final TAG:Ljava/lang/String; = "InformationElementUtil"


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

.method private static isFragmentable(II)Z
    .locals 1

    .line 1
    const/16 v0, 0xff

    .line 2
    .line 3
    if-ne p0, v0, :cond_0

    .line 4
    .line 5
    const/16 p0, 0x6b

    .line 6
    .line 7
    if-ne p1, p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public static parseInformationElements([B)[Landroid/net/wifi/ScanResult$InformationElement;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    new-array p0, v0, [Landroid/net/wifi/ScanResult$InformationElement;

    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    move v3, v0

    .line 23
    :goto_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    const/4 v5, 0x1

    .line 28
    if-le v4, v5, :cond_8

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    const/16 v6, 0xff

    .line 38
    .line 39
    and-int/2addr v4, v6

    .line 40
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    and-int/2addr v7, v6

    .line 45
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    .line 46
    .line 47
    .line 48
    move-result v8

    .line 49
    if-gt v7, v8, :cond_8

    .line 50
    .line 51
    if-nez v4, :cond_1

    .line 52
    .line 53
    if-eqz v3, :cond_1

    .line 54
    .line 55
    goto :goto_3

    .line 56
    :cond_1
    const/4 v8, 0x0

    .line 57
    if-nez v4, :cond_3

    .line 58
    .line 59
    move v3, v5

    .line 60
    :cond_2
    move v5, v0

    .line 61
    goto :goto_1

    .line 62
    :cond_3
    if-ne v4, v6, :cond_2

    .line 63
    .line 64
    if-nez v7, :cond_4

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_4
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    and-int/2addr v5, v6

    .line 72
    invoke-static {v4, v5}, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil;->isFragmentable(II)Z

    .line 73
    .line 74
    .line 75
    move-result v9

    .line 76
    if-eqz v9, :cond_5

    .line 77
    .line 78
    if-ne v7, v6, :cond_5

    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 81
    .line 82
    .line 83
    new-instance v8, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$DefragmentElement;

    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    const/16 v9, 0xf2

    .line 90
    .line 91
    invoke-direct {v8, p0, v6, v4, v9}, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$DefragmentElement;-><init>([BIII)V

    .line 92
    .line 93
    .line 94
    :cond_5
    add-int/lit8 v7, v7, -0x1

    .line 95
    .line 96
    :goto_1
    new-instance v6, Landroid/net/wifi/ScanResult$InformationElement;

    .line 97
    .line 98
    invoke-direct {v6}, Landroid/net/wifi/ScanResult$InformationElement;-><init>()V

    .line 99
    .line 100
    .line 101
    iput v4, v6, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    .line 102
    .line 103
    iput v5, v6, Landroid/net/wifi/ScanResult$InformationElement;->idExt:I

    .line 104
    .line 105
    if-eqz v8, :cond_7

    .line 106
    .line 107
    iget v4, v8, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$DefragmentElement;->bytesRead:I

    .line 108
    .line 109
    if-nez v4, :cond_6

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_6
    iget-object v4, v8, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$DefragmentElement;->bytes:[B

    .line 113
    .line 114
    const/4 v5, 0x3

    .line 115
    array-length v7, v4

    .line 116
    invoke-static {v4, v5, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    iput-object v4, v6, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 121
    .line 122
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    iget v5, v8, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$DefragmentElement;->bytesRead:I

    .line 127
    .line 128
    add-int/2addr v4, v5

    .line 129
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_7
    new-array v4, v7, [B

    .line 134
    .line 135
    iput-object v4, v6, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 136
    .line 137
    iget-object v4, v6, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 138
    .line 139
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 140
    .line 141
    .line 142
    :goto_2
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_8
    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 147
    .line 148
    .line 149
    move-result p0

    .line 150
    new-array p0, p0, [Landroid/net/wifi/ScanResult$InformationElement;

    .line 151
    .line 152
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    check-cast p0, [Landroid/net/wifi/ScanResult$InformationElement;

    .line 157
    .line 158
    return-object p0
.end method

.method public static toHexString(Landroid/net/wifi/ScanResult$InformationElement;)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    .line 7
    .line 8
    int-to-byte v1, v1

    .line 9
    const/4 v2, 0x1

    .line 10
    new-array v3, v2, [B

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    aput-byte v1, v3, v4

    .line 14
    .line 15
    invoke-static {v3}, Landroid/net/wifi/util/HexEncoding;->encode([B)[C

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget v1, p0, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    .line 23
    .line 24
    const/16 v3, 0xff

    .line 25
    .line 26
    if-ne v1, v3, :cond_0

    .line 27
    .line 28
    iget v1, p0, Landroid/net/wifi/ScanResult$InformationElement;->idExt:I

    .line 29
    .line 30
    int-to-byte v1, v1

    .line 31
    new-array v3, v2, [B

    .line 32
    .line 33
    aput-byte v1, v3, v4

    .line 34
    .line 35
    invoke-static {v3}, Landroid/net/wifi/util/HexEncoding;->encode([B)[C

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 43
    .line 44
    array-length v1, v1

    .line 45
    int-to-byte v1, v1

    .line 46
    new-array v2, v2, [B

    .line 47
    .line 48
    aput-byte v1, v2, v4

    .line 49
    .line 50
    invoke-static {v2}, Landroid/net/wifi/util/HexEncoding;->encode([B)[C

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    iget-object p0, p0, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 58
    .line 59
    invoke-static {p0}, Landroid/net/wifi/util/HexEncoding;->encode([B)[C

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    return-object p0
.end method
