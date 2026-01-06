.class public Lcom/samsung/uwb/support/data/param/capsinfo/RanMultiplier;
.super Lcom/samsung/uwb/support/data/param/TlvParam;
.source "RanMultiplier.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CCC_RAN_MULTIPLIER"


# instance fields
.field private final ranMultiplier:I


# direct methods
.method public constructor <init>(BI[B)V
    .locals 2
    .param p1, "tag"    # B
    .param p2, "length"    # I
    .param p3, "payload"    # [B

    .line 14
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/uwb/support/data/param/TlvParam;-><init>(BI[B)V

    .line 15
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 16
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 17
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 18
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/RanMultiplier;->ranMultiplier:I

    goto :goto_0

    .line 20
    :cond_0
    invoke-static {v0}, Lcom/samsung/uwb/support/util/UwbUtil;->getInt(Ljava/nio/ByteBuffer;)I

    move-result v1

    iput v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/RanMultiplier;->ranMultiplier:I

    .line 22
    :goto_0
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 26
    const-string v0, "INVALID"

    .line 27
    .local v0, "description":Ljava/lang/String;
    iget v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/RanMultiplier;->ranMultiplier:I

    if-lez v1, :cond_0

    .line 28
    iget v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/RanMultiplier;->ranMultiplier:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 30
    :cond_0
    const-string v1, "CCC_RAN_MULTIPLIER"

    invoke-super {p0, v1, v0}, Lcom/samsung/uwb/support/data/param/TlvParam;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
