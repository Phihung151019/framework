.class public Lcom/samsung/uwb/support/data/param/deviceinfo/UwbsMaxPpmValue;
.super Lcom/samsung/uwb/support/data/param/TlvParam;
.source "UwbsMaxPpmValue.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UWBS_MAX_PPM_VALUE"


# instance fields
.field private final maxPpmValue:I


# direct methods
.method protected constructor <init>(BI[B)V
    .locals 2
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
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/samsung/uwb/support/data/param/deviceinfo/UwbsMaxPpmValue;->maxPpmValue:I

    .line 17
    return-void
.end method


# virtual methods
.method public getMaxPpmValue()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/samsung/uwb/support/data/param/deviceinfo/UwbsMaxPpmValue;->maxPpmValue:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 25
    iget v0, p0, Lcom/samsung/uwb/support/data/param/deviceinfo/UwbsMaxPpmValue;->maxPpmValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, "description":Ljava/lang/String;
    const-string v1, "UWBS_MAX_PPM_VALUE"

    invoke-super {p0, v1, v0}, Lcom/samsung/uwb/support/data/param/TlvParam;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
