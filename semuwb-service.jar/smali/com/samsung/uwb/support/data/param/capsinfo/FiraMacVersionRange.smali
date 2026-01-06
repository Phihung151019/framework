.class public Lcom/samsung/uwb/support/data/param/capsinfo/FiraMacVersionRange;
.super Lcom/samsung/uwb/support/data/param/TlvParam;
.source "FiraMacVersionRange.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "FIRA_MAC_VERSION_RANGE"


# instance fields
.field private final versionRange:[B


# direct methods
.method public constructor <init>(BI[B)V
    .locals 2
    .param p1, "tag"    # B
    .param p2, "length"    # I
    .param p3, "payload"    # [B

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/uwb/support/data/param/TlvParam;-><init>(BI[B)V

    .line 14
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 15
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/FiraMacVersionRange;->versionRange:[B

    .line 16
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 17
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    .line 21
    const-string v0, "INVALID"

    .line 22
    .local v0, "description":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/FiraMacVersionRange;->versionRange:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/FiraMacVersionRange;->versionRange:[B

    const/4 v3, 0x2

    aget-byte v1, v1, v3

    if-lez v1, :cond_0

    .line 23
    iget-object v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/FiraMacVersionRange;->versionRange:[B

    aget-byte v1, v1, v2

    .line 24
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/uwb/support/data/param/capsinfo/FiraMacVersionRange;->versionRange:[B

    const/4 v4, 0x1

    aget-byte v2, v2, v4

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/uwb/support/data/param/capsinfo/FiraMacVersionRange;->versionRange:[B

    aget-byte v3, v4, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/uwb/support/data/param/capsinfo/FiraMacVersionRange;->versionRange:[B

    const/4 v5, 0x3

    aget-byte v4, v4, v5

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    .line 23
    const-string v2, "%d.%d to %d.%d support"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 26
    :cond_0
    const-string v1, "FIRA_MAC_VERSION_RANGE"

    invoke-super {p0, v1, v0}, Lcom/samsung/uwb/support/data/param/TlvParam;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
