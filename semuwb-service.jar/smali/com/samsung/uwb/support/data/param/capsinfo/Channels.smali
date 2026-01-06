.class public Lcom/samsung/uwb/support/data/param/capsinfo/Channels;
.super Lcom/samsung/uwb/support/data/param/TlvParam;
.source "Channels.java"


# static fields
.field private static final CH10:S = 0x10s

.field private static final CH12:S = 0x20s

.field private static final CH13:S = 0x40s

.field private static final CH14:S = 0x80s

.field private static final CH5:S = 0x1s

.field private static final CH6:S = 0x2s

.field private static final CH8:S = 0x4s

.field private static final CH9:S = 0x8s

.field public static final TAG:Ljava/lang/String; = "CHANNELS"


# instance fields
.field private final channels:B


# direct methods
.method public constructor <init>(BI[B)V
    .locals 2
    .param p1, "tag"    # B
    .param p2, "length"    # I
    .param p3, "payload"    # [B

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/uwb/support/data/param/TlvParam;-><init>(BI[B)V

    .line 26
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 27
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 28
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/Channels;->channels:B

    .line 29
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 33
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "Channel"

    const-string v2, ""

    const-string v3, ","

    invoke-direct {v0, v3, v1, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 34
    .local v0, "description":Ljava/util/StringJoiner;
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/Channels;->channels:B

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/uwb/support/util/UwbUtil;->isBitSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    const-string v1, " 5 "

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 37
    :cond_0
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/Channels;->channels:B

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/samsung/uwb/support/util/UwbUtil;->isBitSet(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    const-string v1, " 6 "

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 40
    :cond_1
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/Channels;->channels:B

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/samsung/uwb/support/util/UwbUtil;->isBitSet(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 41
    const-string v1, " 8 "

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 43
    :cond_2
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/Channels;->channels:B

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/samsung/uwb/support/util/UwbUtil;->isBitSet(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 44
    const-string v1, " 9 "

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 46
    :cond_3
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/Channels;->channels:B

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lcom/samsung/uwb/support/util/UwbUtil;->isBitSet(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 47
    const-string v1, " 10 "

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 49
    :cond_4
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/Channels;->channels:B

    const/16 v2, 0x20

    invoke-static {v1, v2}, Lcom/samsung/uwb/support/util/UwbUtil;->isBitSet(II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 50
    const-string v1, " 12 "

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 52
    :cond_5
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/Channels;->channels:B

    const/16 v2, 0x40

    invoke-static {v1, v2}, Lcom/samsung/uwb/support/util/UwbUtil;->isBitSet(II)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 53
    const-string v1, " 13 "

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 55
    :cond_6
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/Channels;->channels:B

    const/16 v2, 0x80

    invoke-static {v1, v2}, Lcom/samsung/uwb/support/util/UwbUtil;->isBitSet(II)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 56
    const-string v1, " 14 "

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 58
    :cond_7
    const-string v1, "CHANNELS"

    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/samsung/uwb/support/data/param/capsinfo/Channels;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
