.class public Lcom/samsung/android/server/wifi/util/SemByteBufferReader;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field public static final MAXIMUM_INTEGER_SIZE:I = 0x8

.field public static final MINIMUM_INTEGER_SIZE:I = 0x1


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

.method public static readInteger(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;I)J
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-lt p2, v0, :cond_3

    .line 3
    .line 4
    const/16 v1, 0x8

    .line 5
    .line 6
    if-gt p2, v1, :cond_3

    .line 7
    .line 8
    new-array v2, p2, [B

    .line 9
    .line 10
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 11
    .line 12
    .line 13
    sget-object p0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 14
    .line 15
    const-wide/16 v3, 0x0

    .line 16
    .line 17
    if-ne p1, p0, :cond_1

    .line 18
    .line 19
    sub-int/2addr p2, v0

    .line 20
    :goto_0
    if-ltz p2, :cond_0

    .line 21
    .line 22
    shl-long p0, v3, v1

    .line 23
    .line 24
    aget-byte v0, v2, p2

    .line 25
    .line 26
    and-int/lit16 v0, v0, 0xff

    .line 27
    .line 28
    int-to-long v3, v0

    .line 29
    or-long/2addr v3, p0

    .line 30
    add-int/lit8 p2, p2, -0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return-wide v3

    .line 34
    :cond_1
    const/4 p0, 0x0

    .line 35
    :goto_1
    if-ge p0, p2, :cond_2

    .line 36
    .line 37
    aget-byte p1, v2, p0

    .line 38
    .line 39
    shl-long/2addr v3, v1

    .line 40
    and-int/lit16 p1, p1, 0xff

    .line 41
    .line 42
    int-to-long v5, p1

    .line 43
    or-long/2addr v3, v5

    .line 44
    add-int/lit8 p0, p0, 0x1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    return-wide v3

    .line 48
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 49
    .line 50
    const-string p1, "Invalid size "

    .line 51
    .line 52
    invoke-static {p2, p1}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p0
.end method

.method public static readString(Ljava/nio/ByteBuffer;ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 0

    .line 1
    new-array p1, p1, [B

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    new-instance p0, Ljava/lang/String;

    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public static readStringWithByteLength(Ljava/nio/ByteBuffer;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit16 v0, v0, 0xff

    .line 6
    .line 7
    invoke-static {p0, v0, p1}, Lcom/samsung/android/server/wifi/util/SemByteBufferReader;->readString(Ljava/nio/ByteBuffer;ILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method
