.class public Lcom/samsung/uwb/support/data/param/capsinfo/MultiNodeMode;
.super Lcom/samsung/uwb/support/data/param/TlvParam;
.source "MultiNodeMode.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "MULTI_NODE_MODE"


# instance fields
.field private final MANY_TO_MANY:B

.field private final ONE_TO_MANY:B

.field private final ONE_TO_ONE:B

.field private final mMultiNodeMode:B


# direct methods
.method public constructor <init>(BI[B)V
    .locals 2
    .param p1, "tag"    # B
    .param p2, "length"    # I
    .param p3, "payload"    # [B

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/uwb/support/data/param/TlvParam;-><init>(BI[B)V

    .line 17
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/samsung/uwb/support/data/param/capsinfo/MultiNodeMode;->ONE_TO_ONE:B

    .line 18
    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/samsung/uwb/support/data/param/capsinfo/MultiNodeMode;->ONE_TO_MANY:B

    .line 19
    const/4 v0, 0x4

    iput-byte v0, p0, Lcom/samsung/uwb/support/data/param/capsinfo/MultiNodeMode;->MANY_TO_MANY:B

    .line 23
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 24
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 25
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/MultiNodeMode;->mMultiNodeMode:B

    .line 26
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 30
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ","

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 31
    .local v0, "description":Ljava/util/StringJoiner;
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/MultiNodeMode;->mMultiNodeMode:B

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/uwb/support/util/UwbUtil;->isBitSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    const-string v1, " 1-to-1 "

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 34
    :cond_0
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/MultiNodeMode;->mMultiNodeMode:B

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/samsung/uwb/support/util/UwbUtil;->isBitSet(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 35
    const-string v1, " 1-to-N "

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 37
    :cond_1
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/MultiNodeMode;->mMultiNodeMode:B

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/samsung/uwb/support/util/UwbUtil;->isBitSet(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 38
    const-string v1, " M-to-N "

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 40
    :cond_2
    const-string v1, "MULTI_NODE_MODE"

    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/samsung/uwb/support/data/param/capsinfo/MultiNodeMode;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
