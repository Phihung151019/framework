.class public Lcom/samsung/uwb/support/data/param/appconfig/AliroMacMode;
.super Lcom/samsung/uwb/support/data/param/TlvParam;
.source "AliroMacMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/uwb/support/data/param/appconfig/AliroMacMode$Value;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ALIRO_MAC_MODE"


# instance fields
.field public mode:I

.field public offset:I


# direct methods
.method public constructor <init>(BI[B)V
    .locals 4
    .param p1, "tag"    # B
    .param p2, "length"    # I
    .param p3, "payload"    # [B

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/uwb/support/data/param/TlvParam;-><init>(BI[B)V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/uwb/support/data/param/appconfig/AliroMacMode;->mode:I

    .line 14
    iput v0, p0, Lcom/samsung/uwb/support/data/param/appconfig/AliroMacMode;->offset:I

    .line 23
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 24
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 25
    aget-byte v0, p3, v0

    .line 26
    .local v0, "firstByte":B
    and-int/lit16 v2, v0, 0xff

    and-int/lit16 v2, v2, 0xc0

    .line 27
    .local v2, "modeBits":I
    shr-int/lit8 v3, v2, 0x6

    iput v3, p0, Lcom/samsung/uwb/support/data/param/appconfig/AliroMacMode;->mode:I

    .line 28
    and-int/lit8 v3, v0, 0x3f

    iput v3, p0, Lcom/samsung/uwb/support/data/param/appconfig/AliroMacMode;->offset:I

    .line 29
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 33
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ", "

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 34
    .local v0, "stringJoiner":Ljava/util/StringJoiner;
    iget v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/AliroMacMode;->mode:I

    if-nez v1, :cond_0

    .line 35
    const-string v1, "1 active Ranging Round"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_0

    .line 36
    :cond_0
    iget v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/AliroMacMode;->mode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 37
    const-string v1, "2 active Ranging Round"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 39
    :cond_1
    :goto_0
    iget v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/AliroMacMode;->offset:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "offset : %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 40
    const-string v1, "ALIRO_MAC_MODE"

    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-super {p0, v1, v2}, Lcom/samsung/uwb/support/data/param/TlvParam;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
