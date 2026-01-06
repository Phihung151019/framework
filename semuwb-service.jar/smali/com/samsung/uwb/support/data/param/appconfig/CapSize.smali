.class public Lcom/samsung/uwb/support/data/param/appconfig/CapSize;
.super Lcom/samsung/uwb/support/data/param/TlvParam;
.source "CapSize.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CAP_SIZE"


# instance fields
.field public final capSize:[B


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
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 16
    const/4 v1, 0x2

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/CapSize;->capSize:[B

    .line 17
    iget-object v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/CapSize;->capSize:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 18
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 22
    iget-object v0, p0, Lcom/samsung/uwb/support/data/param/appconfig/CapSize;->capSize:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    .line 23
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/CapSize;->capSize:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 22
    const-string v1, "Maximum CAP Size:%d, Minimum CAP Size%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, "description":Ljava/lang/String;
    const-string v1, "CAP_SIZE"

    invoke-super {p0, v1, v0}, Lcom/samsung/uwb/support/data/param/TlvParam;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
