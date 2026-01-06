.class public Lcom/samsung/uwb/support/data/param/devicecalibration/VcoPll;
.super Lcom/samsung/uwb/support/data/param/TlvParam;
.source "VcoPll.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VCO_PLL"


# instance fields
.field private final pllValue:S


# direct methods
.method protected constructor <init>(BI[B)V
    .locals 2
    .param p1, "tag"    # B
    .param p2, "length"    # I
    .param p3, "payload"    # [B

    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/uwb/support/data/param/TlvParam;-><init>(BI[B)V

    .line 17
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 18
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 19
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/VcoPll;->pllValue:S

    .line 20
    return-void
.end method

.method public constructor <init>(S)V
    .locals 3
    .param p1, "vcoPllValue"    # S

    .line 23
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {p1, v0}, Lcom/samsung/uwb/support/util/UwbUtil;->toByteArray(SLjava/nio/ByteOrder;)[B

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/uwb/support/data/param/TlvParam;-><init>(BI[B)V

    .line 24
    iput-short p1, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/VcoPll;->pllValue:S

    .line 25
    return-void
.end method


# virtual methods
.method public getPllValue()S
    .locals 1

    .line 28
    iget-short v0, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/VcoPll;->pllValue:S

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 33
    iget-short v0, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/VcoPll;->pllValue:S

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "description":Ljava/lang/String;
    const-string v1, "VCO_PLL"

    invoke-super {p0, v1, v0}, Lcom/samsung/uwb/support/data/param/TlvParam;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
