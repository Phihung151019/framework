.class public Lcom/samsung/uwb/support/data/param/appconfig/RangingRoundControl;
.super Lcom/samsung/uwb/support/data/param/TlvParam;
.source "RangingRoundControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/uwb/support/data/param/appconfig/RangingRoundControl$Value;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "RANGING_ROUND_CONTROL"


# instance fields
.field public final control:B


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

    iput-byte v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/RangingRoundControl;->control:B

    .line 26
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 30
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ", "

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 31
    .local v0, "stringJoiner":Ljava/util/StringJoiner;
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/RangingRoundControl;->control:B

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 32
    const-string v1, "RRRM"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 34
    :cond_0
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/RangingRoundControl;->control:B

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 35
    const-string v1, "CM"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 37
    :cond_1
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/RangingRoundControl;->control:B

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 38
    const-string v1, "RCP"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 40
    :cond_2
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/RangingRoundControl;->control:B

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_3

    .line 41
    const-string v1, "MRP"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 43
    :cond_3
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/RangingRoundControl;->control:B

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_4

    .line 44
    const-string v1, "MRM"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 46
    :cond_4
    const-string v1, "RANGING_ROUND_CONTROL"

    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-super {p0, v1, v2}, Lcom/samsung/uwb/support/data/param/TlvParam;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
