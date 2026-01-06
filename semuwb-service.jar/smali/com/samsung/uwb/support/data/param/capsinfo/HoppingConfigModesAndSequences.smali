.class public Lcom/samsung/uwb/support/data/param/capsinfo/HoppingConfigModesAndSequences;
.super Lcom/samsung/uwb/support/data/param/TlvParam;
.source "HoppingConfigModesAndSequences.java"


# static fields
.field private static final HOPPING_CONFIG_MODE_ADAPTIVE:I = 0x20

.field private static final HOPPING_CONFIG_MODE_CONTINUOUS:I = 0x40

.field private static final HOPPING_CONFIG_MODE_NONE:I = 0x80

.field private static final HOPPING_SEQUENCE_AES:I = 0x8

.field private static final HOPPING_SEQUENCE_DEFAULT:I = 0x10

.field public static final TAG:Ljava/lang/String; = "SUPPORTED_HOP_MODES_AND_SEQUENCES"


# instance fields
.field private final modesAndSequences:B


# direct methods
.method public constructor <init>(BI[B)V
    .locals 2
    .param p1, "tag"    # B
    .param p2, "length"    # I
    .param p3, "payload"    # [B

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/uwb/support/data/param/TlvParam;-><init>(BI[B)V

    .line 22
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 23
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 24
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/HoppingConfigModesAndSequences;->modesAndSequences:B

    .line 25
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 29
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ","

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 30
    .local v0, "description":Ljava/util/StringJoiner;
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/HoppingConfigModesAndSequences;->modesAndSequences:B

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/samsung/uwb/support/util/UwbUtil;->isBitSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    const-string v1, " Hopping Sequence: AES "

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 33
    :cond_0
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/HoppingConfigModesAndSequences;->modesAndSequences:B

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lcom/samsung/uwb/support/util/UwbUtil;->isBitSet(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 34
    const-string v1, " Hopping Sequence: Default "

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 36
    :cond_1
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/HoppingConfigModesAndSequences;->modesAndSequences:B

    const/16 v2, 0x20

    invoke-static {v1, v2}, Lcom/samsung/uwb/support/util/UwbUtil;->isBitSet(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 37
    const-string v1, " Hopping Config Mode: Adaptive "

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 39
    :cond_2
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/HoppingConfigModesAndSequences;->modesAndSequences:B

    const/16 v2, 0x40

    invoke-static {v1, v2}, Lcom/samsung/uwb/support/util/UwbUtil;->isBitSet(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 40
    const-string v1, " Hopping Config Mode: Continuous "

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 42
    :cond_3
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/HoppingConfigModesAndSequences;->modesAndSequences:B

    const/16 v2, 0x80

    invoke-static {v1, v2}, Lcom/samsung/uwb/support/util/UwbUtil;->isBitSet(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 43
    const-string v1, " Hopping Config Mode: None "

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 45
    :cond_4
    const-string v1, "SUPPORTED_HOP_MODES_AND_SEQUENCES"

    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/samsung/uwb/support/data/param/capsinfo/HoppingConfigModesAndSequences;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
