.class public Lcom/samsung/uwb/support/data/param/capsinfo/RangingMethod;
.super Lcom/samsung/uwb/support/data/param/TlvParam;
.source "RangingMethod.java"


# static fields
.field private static final ADS_TWR_CONTENTION_BASED:I = 0x100

.field private static final CCC_DEFERRED_DS_TWR:I = 0x400

.field private static final DATA_TRANSFER_MODE:I = 0x200

.field private static final DS_TWR_DEFERRED:I = 0x4

.field private static final DS_TWR_NON_DEFERRED:I = 0x10

.field private static final ESS_TWR_NON_DEFERRED:I = 0x80

.field private static final OWR_DL_TDOA:I = 0x20

.field private static final OWR_FOR_AOA_MEASUREMENT:I = 0x40

.field private static final SS_TWR_DEFERRED:I = 0x2

.field private static final SS_TWR_NON_DEFERRED:I = 0x8

.field public static final TAG:Ljava/lang/String; = "RANGING_METHOD"


# instance fields
.field public final rangingMethod:S


# direct methods
.method public constructor <init>(BI[B)V
    .locals 2
    .param p1, "tag"    # B
    .param p2, "length"    # I
    .param p3, "payload"    # [B

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/uwb/support/data/param/TlvParam;-><init>(BI[B)V

    .line 27
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 28
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 29
    invoke-static {v0}, Lcom/samsung/uwb/support/util/UwbUtil;->getShort(Ljava/nio/ByteBuffer;)S

    move-result v1

    iput-short v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/RangingMethod;->rangingMethod:S

    .line 30
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 34
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ","

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 35
    .local v0, "description":Ljava/util/StringJoiner;
    iget-short v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/RangingMethod;->rangingMethod:S

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 36
    const-string v1, " SS-TWR-Deferred "

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 38
    :cond_0
    iget-short v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/RangingMethod;->rangingMethod:S

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 39
    const-string v1, " DS-TWR-Deferred "

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 41
    :cond_1
    iget-short v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/RangingMethod;->rangingMethod:S

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 42
    const-string v1, " SS-TWR-Non-deferred "

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 44
    :cond_2
    iget-short v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/RangingMethod;->rangingMethod:S

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    .line 45
    const-string v1, " DS-TWR-Non-deferred "

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 47
    :cond_3
    iget-short v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/RangingMethod;->rangingMethod:S

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    .line 48
    const-string v1, " OWR-AoA-Measurement "

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 50
    :cond_4
    iget-short v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/RangingMethod;->rangingMethod:S

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    .line 51
    const-string v1, " DL-TDOA "

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 53
    :cond_5
    iget-short v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/RangingMethod;->rangingMethod:S

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    .line 54
    const-string v1, " eSS-TWR-with-Non-deferred "

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 56
    :cond_6
    iget-short v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/RangingMethod;->rangingMethod:S

    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_7

    .line 57
    const-string v1, " aDS-TWR-for-Contention-based "

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 59
    :cond_7
    iget-short v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/RangingMethod;->rangingMethod:S

    const/16 v2, 0x200

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_8

    .line 60
    const-string v1, " Data-Transfer "

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 62
    :cond_8
    iget-short v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/RangingMethod;->rangingMethod:S

    const/16 v2, 0x400

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_9

    .line 63
    const-string v1, " CCC-Deferred-DS-TWR "

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 65
    :cond_9
    const-string v1, "RANGING_METHOD"

    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/samsung/uwb/support/data/param/capsinfo/RangingMethod;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
