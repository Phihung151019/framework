.class public Lcom/samsung/uwb/support/data/param/capsinfo/SlotBitMask;
.super Lcom/samsung/uwb/support/data/param/TlvParam;
.source "SlotBitMask.java"


# static fields
.field private static final CCC_CHAPS_PER_SLOT_12:I = 0x20

.field private static final CCC_CHAPS_PER_SLOT_24:I = 0x40

.field private static final CCC_CHAPS_PER_SLOT_3:I = 0x1

.field private static final CCC_CHAPS_PER_SLOT_4:I = 0x2

.field private static final CCC_CHAPS_PER_SLOT_6:I = 0x4

.field private static final CCC_CHAPS_PER_SLOT_8:I = 0x8

.field private static final CCC_CHAPS_PER_SLOT_9:I = 0x10

.field public static final TAG:Ljava/lang/String; = "CCC_SLOT_BIT_MASK"


# instance fields
.field private final slotBitMask:B


# direct methods
.method public constructor <init>(BI[B)V
    .locals 2
    .param p1, "tag"    # B
    .param p2, "length"    # I
    .param p3, "payload"    # [B

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/uwb/support/data/param/TlvParam;-><init>(BI[B)V

    .line 24
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 25
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 26
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/SlotBitMask;->slotBitMask:B

    .line 27
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 31
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, " Chaps Per Slot: "

    const-string v2, ""

    const-string v3, ","

    invoke-direct {v0, v3, v1, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 32
    .local v0, "description":Ljava/util/StringJoiner;
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/SlotBitMask;->slotBitMask:B

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/uwb/support/util/UwbUtil;->isBitSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    const-string v1, " 3 "

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 35
    :cond_0
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/SlotBitMask;->slotBitMask:B

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/samsung/uwb/support/util/UwbUtil;->isBitSet(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 36
    const-string v1, " 4 "

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 38
    :cond_1
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/SlotBitMask;->slotBitMask:B

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/samsung/uwb/support/util/UwbUtil;->isBitSet(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 39
    const-string v1, " 6 "

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 41
    :cond_2
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/SlotBitMask;->slotBitMask:B

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/samsung/uwb/support/util/UwbUtil;->isBitSet(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 42
    const-string v1, " 8 "

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 44
    :cond_3
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/SlotBitMask;->slotBitMask:B

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lcom/samsung/uwb/support/util/UwbUtil;->isBitSet(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 45
    const-string v1, " 9 "

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 47
    :cond_4
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/SlotBitMask;->slotBitMask:B

    const/16 v2, 0x20

    invoke-static {v1, v2}, Lcom/samsung/uwb/support/util/UwbUtil;->isBitSet(II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 48
    const-string v1, " 12 "

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 50
    :cond_5
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/SlotBitMask;->slotBitMask:B

    const/16 v2, 0x40

    invoke-static {v1, v2}, Lcom/samsung/uwb/support/util/UwbUtil;->isBitSet(II)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 51
    const-string v1, " 24 "

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 53
    :cond_6
    const-string v1, "CCC_SLOT_BIT_MASK"

    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/samsung/uwb/support/data/param/capsinfo/SlotBitMask;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
