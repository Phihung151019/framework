.class public Lcom/samsung/uwb/support/data/param/appconfig/RangeDataNtfProximityFar;
.super Lcom/samsung/uwb/support/data/param/TlvParam;
.source "RangeDataNtfProximityFar.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "RANGE_DATA_NTF_PROXIMITY_FAR"


# instance fields
.field public final range:I


# direct methods
.method public constructor <init>(BI[B)V
    .locals 3
    .param p1, "tag"    # B
    .param p2, "length"    # I
    .param p3, "payload"    # [B

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/uwb/support/data/param/TlvParam;-><init>(BI[B)V

    .line 14
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 15
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 16
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/RangeDataNtfProximityFar;->range:I

    .line 17
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 21
    iget v0, p0, Lcom/samsung/uwb/support/data/param/appconfig/RangeDataNtfProximityFar;->range:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RANGE_DATA_NTF_PROXIMITY_FAR"

    invoke-super {p0, v1, v0}, Lcom/samsung/uwb/support/data/param/TlvParam;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
