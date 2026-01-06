.class public Lcom/samsung/uwb/support/data/param/vendorappconfig/RanMultiplier;
.super Lcom/samsung/uwb/support/data/param/TlvParam;
.source "RanMultiplier.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RAN_MULTIPLIER"


# instance fields
.field private final filterCount:I


# direct methods
.method protected constructor <init>(BI[B)V
    .locals 2
    .param p1, "tag"    # B
    .param p2, "length"    # I
    .param p3, "payload"    # [B

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/uwb/support/data/param/TlvParam;-><init>(BI[B)V

    .line 19
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 20
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 21
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput v1, p0, Lcom/samsung/uwb/support/data/param/vendorappconfig/RanMultiplier;->filterCount:I

    .line 22
    return-void
.end method


# virtual methods
.method public getFilterCount()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/samsung/uwb/support/data/param/vendorappconfig/RanMultiplier;->filterCount:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 31
    iget v0, p0, Lcom/samsung/uwb/support/data/param/vendorappconfig/RanMultiplier;->filterCount:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "description":Ljava/lang/String;
    const-string v1, "RAN_MULTIPLIER"

    invoke-super {p0, v1, v0}, Lcom/samsung/uwb/support/data/param/TlvParam;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
