.class public Lcom/samsung/uwb/support/data/param/capsinfo/PulseShapeCombo;
.super Lcom/samsung/uwb/support/data/param/TlvParam;
.source "PulseShapeCombo.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PULSE_SHAPE_COMBO"


# instance fields
.field private final pulseShapeCombo:[B


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

    .line 15
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 16
    invoke-static {v0, p2}, Lcom/samsung/uwb/support/util/UwbUtil;->getByteArray(Ljava/nio/ByteBuffer;I)[B

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/PulseShapeCombo;->pulseShapeCombo:[B

    .line 17
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 21
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 22
    .local v0, "description":Ljava/util/StringJoiner;
    const-string v1, " Pulse Shape Combo Definition :"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 23
    const-string v1, " 0(Symmetrical-Pulse), 1(Precursor-Free-Pulse), 2(Precursor-Free-Pulse-for-Special-Case)"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 24
    const-string v1, "PULSE_SHAPE_COMBO"

    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/samsung/uwb/support/data/param/capsinfo/PulseShapeCombo;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
