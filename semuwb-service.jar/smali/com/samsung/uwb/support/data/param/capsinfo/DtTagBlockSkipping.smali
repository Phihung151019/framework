.class public Lcom/samsung/uwb/support/data/param/capsinfo/DtTagBlockSkipping;
.super Lcom/samsung/uwb/support/data/param/TlvParam;
.source "DtTagBlockSkipping.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "DT_TAG_BLOCK_SKIPPING"


# instance fields
.field private final support:B


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
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/DtTagBlockSkipping;->support:B

    .line 18
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 23
    iget-byte v0, p0, Lcom/samsung/uwb/support/data/param/capsinfo/DtTagBlockSkipping;->support:B

    const-string v1, "DT_TAG_BLOCK_SKIPPING"

    if-nez v0, :cond_0

    .line 24
    const-string v0, " Not support "

    invoke-super {p0, v1, v0}, Lcom/samsung/uwb/support/data/param/TlvParam;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "log":Ljava/lang/String;
    goto :goto_0

    .line 26
    .end local v0    # "log":Ljava/lang/String;
    :cond_0
    const-string v0, " Support "

    invoke-super {p0, v1, v0}, Lcom/samsung/uwb/support/data/param/TlvParam;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    .restart local v0    # "log":Ljava/lang/String;
    :goto_0
    return-object v0
.end method
