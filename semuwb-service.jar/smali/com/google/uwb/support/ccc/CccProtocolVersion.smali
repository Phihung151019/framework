.class public Lcom/google/uwb/support/ccc/CccProtocolVersion;
.super Lcom/google/uwb/support/base/ProtocolVersion;
.source "CccProtocolVersion.java"


# static fields
.field private static final CCC_PACKED_BYTE_COUNT:I = 0x2


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "major"    # I
    .param p2, "minor"    # I

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/google/uwb/support/base/ProtocolVersion;-><init>(II)V

    .line 29
    return-void
.end method

.method public static bytesUsed()I
    .locals 1

    .line 54
    const/4 v0, 0x2

    return v0
.end method

.method public static fromBytes([BI)Lcom/google/uwb/support/ccc/CccProtocolVersion;
    .locals 3
    .param p0, "data"    # [B
    .param p1, "startIndex"    # I

    .line 48
    aget-byte v0, p0, p1

    .line 49
    .local v0, "major":I
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    .line 50
    .local v1, "minor":I
    new-instance v2, Lcom/google/uwb/support/ccc/CccProtocolVersion;

    invoke-direct {v2, v0, v1}, Lcom/google/uwb/support/ccc/CccProtocolVersion;-><init>(II)V

    return-object v2
.end method

.method public static fromString(Ljava/lang/String;)Lcom/google/uwb/support/ccc/CccProtocolVersion;
    .locals 4
    .param p0, "protocol"    # Ljava/lang/String;

    .line 32
    const-string v0, "\\."

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "parts":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 37
    new-instance v1, Lcom/google/uwb/support/ccc/CccProtocolVersion;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/google/uwb/support/ccc/CccProtocolVersion;-><init>(II)V

    return-object v1

    .line 34
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid protocol version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public toBytes()[B
    .locals 2

    .line 41
    invoke-static {}, Lcom/google/uwb/support/ccc/CccProtocolVersion;->bytesUsed()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 42
    invoke-virtual {p0}, Lcom/google/uwb/support/ccc/CccProtocolVersion;->getMajor()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 43
    invoke-virtual {p0}, Lcom/google/uwb/support/ccc/CccProtocolVersion;->getMinor()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 41
    return-object v0
.end method
