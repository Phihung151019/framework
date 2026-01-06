.class public Lcom/sec/esecomm/BerTLVParser;
.super Ljava/lang/Object;
.source "BerTLVParser.java"


# static fields
.field private static final blacklist MASK_BIT8_LEN:B = -0x80t

.field private static final blacklist MASK_CONSTRUCTED_TAG:B = 0x20t

.field private static final blacklist MASK_TAG_VALUE:B = 0x1ft


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist parse([BII)Lcom/sec/esecomm/BerTLVObject;
    .locals 10
    .param p0, "respAPDUData"    # [B
    .param p1, "offset"    # I
    .param p2, "respAPDUDataLen"    # I

    .line 37
    aget-byte v0, p0, p1

    const/16 v1, 0x20

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 39
    return-object v2

    .line 42
    :cond_0
    aget-byte v0, p0, p1

    const/16 v1, 0x1f

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 44
    return-object v2

    .line 47
    :cond_1
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .local v0, "offset":I
    aget-byte p1, p0, p1

    and-int/lit16 v4, p1, 0xff

    .line 48
    .local v4, "tagVal":I
    const/4 v5, 0x1

    .line 50
    .local v5, "tagLen":I
    aget-byte p1, p0, v0

    const/16 v1, -0x80

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_2

    .line 52
    return-object v2

    .line 55
    :cond_2
    add-int/lit8 v9, v0, 0x1

    .end local v0    # "offset":I
    .local v9, "offset":I
    aget-byte p1, p0, v0

    and-int/lit8 v6, p1, 0x7f

    .line 56
    .local v6, "valueLen":I
    const/4 v7, 0x1

    .line 58
    .local v7, "valueLenLen":I
    new-instance v3, Lcom/sec/esecomm/BerTLVObject;

    move-object v8, p0

    .end local p0    # "respAPDUData":[B
    .local v8, "respAPDUData":[B
    invoke-direct/range {v3 .. v9}, Lcom/sec/esecomm/BerTLVObject;-><init>(IIII[BI)V

    .line 60
    .local v3, "ret":Lcom/sec/esecomm/BerTLVObject;
    return-object v3
.end method
