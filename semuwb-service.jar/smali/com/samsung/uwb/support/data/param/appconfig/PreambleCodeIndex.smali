.class public Lcom/samsung/uwb/support/data/param/appconfig/PreambleCodeIndex;
.super Lcom/samsung/uwb/support/data/param/TlvParam;
.source "PreambleCodeIndex.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PREAMBLE_CODE_INDEX"


# instance fields
.field public final preambleCode:B


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
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/PreambleCodeIndex;->preambleCode:B

    .line 17
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 21
    const-string v0, "INVALID"

    .line 22
    .local v0, "description":Ljava/lang/String;
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/PreambleCodeIndex;->preambleCode:B

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/PreambleCodeIndex;->preambleCode:B

    const/16 v2, 0xc

    if-gt v1, v2, :cond_0

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-byte v2, p0, Lcom/samsung/uwb/support/data/param/appconfig/PreambleCodeIndex;->preambleCode:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -BPRF"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 24
    :cond_0
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/PreambleCodeIndex;->preambleCode:B

    const/16 v2, 0x19

    if-lt v1, v2, :cond_1

    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/PreambleCodeIndex;->preambleCode:B

    const/16 v2, 0x20

    if-gt v1, v2, :cond_1

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-byte v2, p0, Lcom/samsung/uwb/support/data/param/appconfig/PreambleCodeIndex;->preambleCode:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -HPRF"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 27
    :cond_1
    :goto_0
    const-string v1, "PREAMBLE_CODE_INDEX"

    invoke-super {p0, v1, v0}, Lcom/samsung/uwb/support/data/param/TlvParam;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
