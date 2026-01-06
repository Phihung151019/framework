.class public Lcom/samsung/uwb/support/data/param/capsinfo/BprfParameterSets;
.super Lcom/samsung/uwb/support/data/param/TlvParam;
.source "BprfParameterSets.java"


# static fields
.field private static final SET_1:B = 0x1t

.field private static final SET_2:B = 0x2t

.field private static final SET_3:B = 0x4t

.field private static final SET_4:B = 0x8t

.field private static final SET_5:B = 0x10t

.field private static final SET_6:B = 0x20t

.field public static final TAG:Ljava/lang/String; = "BPRF_PARAM_SETS"


# instance fields
.field private final bprfParamSets:B


# direct methods
.method public constructor <init>(BI[B)V
    .locals 2
    .param p1, "tag"    # B
    .param p2, "length"    # I
    .param p3, "payload"    # [B

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/uwb/support/data/param/TlvParam;-><init>(BI[B)V

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

    iput-byte v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/BprfParameterSets;->bprfParamSets:B

    .line 26
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 30
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "BPRF SET: "

    const-string v2, ""

    const-string v3, ","

    invoke-direct {v0, v3, v1, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 31
    .local v0, "description":Ljava/util/StringJoiner;
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/BprfParameterSets;->bprfParamSets:B

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/uwb/support/util/UwbUtil;->isBitSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    const-string v1, " 1 "

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 34
    :cond_0
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/BprfParameterSets;->bprfParamSets:B

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/samsung/uwb/support/util/UwbUtil;->isBitSet(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 35
    const-string v1, " 2 "

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 37
    :cond_1
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/BprfParameterSets;->bprfParamSets:B

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/samsung/uwb/support/util/UwbUtil;->isBitSet(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 38
    const-string v1, " 3 "

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 40
    :cond_2
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/BprfParameterSets;->bprfParamSets:B

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/samsung/uwb/support/util/UwbUtil;->isBitSet(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 41
    const-string v1, " 4 "

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 43
    :cond_3
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/BprfParameterSets;->bprfParamSets:B

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lcom/samsung/uwb/support/util/UwbUtil;->isBitSet(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 44
    const-string v1, " 5 "

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 46
    :cond_4
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/BprfParameterSets;->bprfParamSets:B

    const/16 v2, 0x20

    invoke-static {v1, v2}, Lcom/samsung/uwb/support/util/UwbUtil;->isBitSet(II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 47
    const-string v1, " 6 "

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 49
    :cond_5
    const-string v1, "BPRF_PARAM_SETS"

    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-super {p0, v1, v2}, Lcom/samsung/uwb/support/data/param/TlvParam;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
