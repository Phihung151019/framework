.class public Lcom/samsung/uwb/support/data/param/capsinfo/MaxMessageSize;
.super Lcom/samsung/uwb/support/data/param/TlvParam;
.source "MaxMessageSize.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "MAX_MESSAGE_SIZE"


# instance fields
.field private final maxSize:S


# direct methods
.method public constructor <init>(BI[B)V
    .locals 2
    .param p1, "tag"    # B
    .param p2, "length"    # I
    .param p3, "payload"    # [B

    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/uwb/support/data/param/TlvParam;-><init>(BI[B)V

    .line 16
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 17
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 18
    invoke-static {v0}, Lcom/samsung/uwb/support/util/UwbUtil;->getShort(Ljava/nio/ByteBuffer;)S

    move-result v1

    iput-short v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/MaxMessageSize;->maxSize:S

    .line 19
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 23
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ""

    const-string v2, " Bytes"

    invoke-direct {v0, v1, v1, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 24
    .local v0, "description":Ljava/util/StringJoiner;
    iget-short v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/MaxMessageSize;->maxSize:S

    if-lez v1, :cond_0

    .line 25
    iget-short v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/MaxMessageSize;->maxSize:S

    invoke-static {v1}, Ljava/lang/Short;->toString(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 27
    :cond_0
    const-string v1, "MAX_MESSAGE_SIZE"

    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/samsung/uwb/support/data/param/capsinfo/MaxMessageSize;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
