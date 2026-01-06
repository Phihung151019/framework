.class public Lcom/samsung/uwb/support/data/param/TlvParam;
.super Ljava/lang/Object;
.source "TlvParam.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "TLV Param"


# instance fields
.field public length:I

.field public payload:[B

.field public tag:[B


# direct methods
.method public constructor <init>(BBI[B)V
    .locals 2
    .param p1, "extTag"    # B
    .param p2, "subId"    # B
    .param p3, "length"    # I
    .param p4, "payload"    # [B

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 v1, 0x1

    aput-byte p2, v0, v1

    iput-object v0, p0, Lcom/samsung/uwb/support/data/param/TlvParam;->tag:[B

    .line 21
    iput p3, p0, Lcom/samsung/uwb/support/data/param/TlvParam;->length:I

    .line 22
    iput-object p4, p0, Lcom/samsung/uwb/support/data/param/TlvParam;->payload:[B

    .line 23
    return-void
.end method

.method public constructor <init>(BI[B)V
    .locals 2
    .param p1, "tag"    # B
    .param p2, "length"    # I
    .param p3, "payload"    # [B

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    iput-object v0, p0, Lcom/samsung/uwb/support/data/param/TlvParam;->tag:[B

    .line 15
    iput p2, p0, Lcom/samsung/uwb/support/data/param/TlvParam;->length:I

    .line 16
    iput-object p3, p0, Lcom/samsung/uwb/support/data/param/TlvParam;->payload:[B

    .line 17
    return-void
.end method


# virtual methods
.method public toByteArray()[B
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/samsung/uwb/support/data/param/TlvParam;->tag:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/samsung/uwb/support/data/param/TlvParam;->length:I

    add-int/2addr v0, v1

    .line 45
    .local v0, "payloadLen":I
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 46
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lcom/samsung/uwb/support/data/param/TlvParam;->tag:[B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 47
    iget v2, p0, Lcom/samsung/uwb/support/data/param/TlvParam;->length:I

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 48
    iget-object v2, p0, Lcom/samsung/uwb/support/data/param/TlvParam;->payload:[B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 49
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 50
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 55
    const-string v0, "TLV Param"

    const-string v1, "Not Defined"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/uwb/support/data/param/TlvParam;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 27
    iget-object v0, p0, Lcom/samsung/uwb/support/data/param/TlvParam;->payload:[B

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/samsung/uwb/support/data/param/TlvParam;->tag:[B

    .line 29
    invoke-static {v0}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/uwb/support/data/param/TlvParam;->payload:[B

    invoke-static {v1}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, p1, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 28
    const-string v1, "Tag: 0x%s,  %s,  Value: 0x%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "str":Ljava/lang/String;
    goto :goto_0

    .line 31
    .end local v0    # "str":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/samsung/uwb/support/data/param/TlvParam;->tag:[B

    .line 32
    invoke-static {v0}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object v0

    .line 31
    const-string v1, "Tag: 0x%s,  %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 34
    .restart local v0    # "str":Ljava/lang/String;
    :goto_0
    return-object v0
.end method

.method public toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;

    .line 38
    iget-object v0, p0, Lcom/samsung/uwb/support/data/param/TlvParam;->tag:[B

    .line 39
    invoke-static {v0}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/uwb/support/data/param/TlvParam;->payload:[B

    invoke-static {v1}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, p1, v1, p2}, [Ljava/lang/Object;

    move-result-object v0

    .line 38
    const-string v1, "Tag: 0x%s,  %s,  Value: 0x%s  (%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "str":Ljava/lang/String;
    return-object v0
.end method
